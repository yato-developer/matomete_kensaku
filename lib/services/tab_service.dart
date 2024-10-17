import 'dart:convert';

import 'package:matomete_kensaku/models/src/tab.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CategoryTabService {
  Map<String, List<Map<String, String>>> tabsData = {
    '新しいタブ': [
      {'title': 'Company Email', 'url': 'https://mail.company.com'},
      {'title': 'Project Management', 'url': 'https://project.company.com'}
    ],
  };

  //データのセーブ
  Future<void> saveTabs(List<CategoryTab> tabs) async {
    final prefs = await SharedPreferences.getInstance();
    String jsonString = jsonEncode(tabs.map((tab) => tab.toJson()).toList());
    prefs.setString('tabs_data', jsonString);
  }

  //データのロード
  Future<List<CategoryTab>> loadTabs() async {
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('tabs_data');
    if (jsonString != null) {
      Map<String, dynamic> jsonData = jsonDecode(jsonString);
      return jsonData.entries.map((entry) {
        String tabName = entry.key;
        List<dynamic> urlsList = entry.value;
        List<ExternalUrls> externalUrls = urlsList.map((url) {
          return ExternalUrls.fromJson(url);
        }).toList();

        return CategoryTab(tabName: tabName, externalUrls: externalUrls);
      }).toList();
    } else {
      return [];
    }
  }

  Future<void> deleteItemFromTab(String tabName, int itemIndex) async {
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('tabs_data');

    if (jsonString != null) {
      Map<String, dynamic> jsonData = jsonDecode(jsonString);

      if (jsonData.containsKey(tabName)) {
        List<dynamic> urlsList = jsonData[tabName];

        // itemIndexが範囲内かどうかをチェック
        if (itemIndex >= 0 && itemIndex < urlsList.length) {
          // インデックスで指定されたアイテムをリストから削除
          urlsList.removeAt(itemIndex);

          // URLsリストが空になった場合でもタブを削除しない
          jsonData[tabName] = urlsList; // 空のリストを設定する

          // 更新されたデータをSharedPreferencesに保存
          prefs.setString('tabs_data', jsonEncode(jsonData));
        }
      }
    }
  }

  //アイテムの追加
  Future<void> addItemToTab(int tabIndex, String title, String url) async {
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('tabs_data');

    if (jsonString != null) {
      // jsonStringをMapとしてデコード
      Map<String, dynamic> jsonData = jsonDecode(jsonString);

      // タブ名のリストを取得してインデックスでアクセス
      List<String> tabNames = jsonData.keys.toList();

      // 指定されたインデックスのタブ名を取得
      if (tabIndex >= 0 && tabIndex < tabNames.length) {
        String tabName = tabNames[tabIndex];

        // 指定されたタブのデータを取得（List<Map<String, String>>）
        List<dynamic> urlsList = jsonData[tabName];

        // 新しいアイテムをリストに追加
        urlsList.add({'title': title, 'url': url});

        // 更新されたデータをSharedPreferencesに保存
        prefs.setString('tabs_data', jsonEncode(jsonData));
      }
    }
  }

  // アイテムの更新（タブインデックスを使用）
  Future<void> updateItemInTab(
      int tabIndex, int itemIndex, String newTitle, String newUrl) async {
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('tabs_data');

    if (jsonString != null) {
      // jsonStringをMapとしてデコード
      Map<String, dynamic> jsonData = jsonDecode(jsonString);

      // タブ名のリストを取得してインデックスでアクセス
      List<String> tabNames = jsonData.keys.toList();

      // 指定されたインデックスのタブ名を取得
      if (tabIndex >= 0 && tabIndex < tabNames.length) {
        String tabName = tabNames[tabIndex];

        if (jsonData.containsKey(tabName)) {
          List<dynamic> urlsList = jsonData[tabName];

          // itemIndexが範囲内かどうかをチェック
          if (itemIndex >= 0 && itemIndex < urlsList.length) {
            // インデックスで指定されたアイテムを更新
            urlsList[itemIndex] = {
              'title': newTitle,
              'url': newUrl,
            };

            // 更新されたデータをSharedPreferencesに保存
            prefs.setString('tabs_data', jsonEncode(jsonData));
          }
        }
      }
    }
  }

//tabの名前を変更
  Future<void> updateTabName(int tabIndex, String newTabName) async {
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('tabs_data');

    if (jsonString != null) {
      Map<String, dynamic> jsonData = jsonDecode(jsonString);
      List<String> tabNames = jsonData.keys.toList();

      if (tabIndex >= 0 && tabIndex < tabNames.length) {
        String oldTabName = tabNames[tabIndex];

        // 新しいタブ名が既に存在する場合、重複を避けるためにインデックスを追加
        String adjustedTabName = newTabName;
        int count = 1;

        while (jsonData.containsKey(adjustedTabName)) {
          adjustedTabName = '${newTabName}_$count';
          count++;
        }

        // 古いタブ名のデータを新しいタブ名で設定
        jsonData[adjustedTabName] = jsonData[oldTabName];
        jsonData.remove(oldTabName); // 古いタブ名を削除

        // タブ名の順番を保持するため、元のインデックスを使用して新しい順序を作成
        List<String> newTabOrder = [];
        for (int i = 0; i < tabNames.length; i++) {
          if (i == tabIndex) {
            newTabOrder.add(adjustedTabName); // 更新されたタブ名を追加
          } else if (jsonData.containsKey(tabNames[i])) {
            newTabOrder.add(tabNames[i]); // 既存のタブ名を追加
          }
        }

        // 新しい順序を基にデータを再構築
        Map<String, dynamic> reorderedJsonData = {};
        for (String tabName in newTabOrder) {
          if (jsonData.containsKey(tabName)) {
            reorderedJsonData[tabName] = jsonData[tabName];
          }
        }

        // 更新されたデータをSharedPreferencesに保存
        prefs.setString('tabs_data', jsonEncode(reorderedJsonData));
      }
    }
  }

  // Add a new tab
  Future<void> addTab(String tabName) async {
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('tabs_data');

    if (jsonString != null) {
      Map<String, dynamic> jsonData = jsonDecode(jsonString);

      // Avoid duplicate tab names
      String adjustedTabName = tabName;
      int count = 1;

      while (jsonData.containsKey(adjustedTabName)) {
        adjustedTabName = '${tabName}_$count';
        count++;
      }

      // Add new tab with an empty list
      jsonData[adjustedTabName] = [];

      // Save updated data to SharedPreferences
      prefs.setString('tabs_data', jsonEncode(jsonData));
    }
  }

  // Delete a tab
  Future<void> deleteTab(int tabIndex) async {
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('tabs_data');

    if (jsonString != null) {
      Map<String, dynamic> jsonData = jsonDecode(jsonString);
      List<String> tabNames = jsonData.keys.toList();

      if (tabIndex >= 0 && tabIndex < tabNames.length) {
        String tabName = tabNames[tabIndex];

        // Remove the specified tab
        jsonData.remove(tabName);

        // Save updated data to SharedPreferences
        prefs.setString('tabs_data', jsonEncode(jsonData));
      }
    }
  }

  // Reorder tabs
  Future<void> reorderTabs(int oldIndex, int newIndex) async {
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('tabs_data');

    if (jsonString != null) {
      Map<String, dynamic> jsonData = jsonDecode(jsonString);
      List<String> tabNames = jsonData.keys.toList();

      if (oldIndex >= 0 &&
          oldIndex < tabNames.length &&
          newIndex >= 0 &&
          newIndex < tabNames.length) {
        String tabToMove = tabNames[oldIndex];

        // Remove the tab from the old index
        tabNames.removeAt(oldIndex);

        // Insert the tab at the new index
        tabNames.insert(newIndex, tabToMove);

        // Rebuild jsonData in the new order
        Map<String, dynamic> reorderedJsonData = {};
        for (String tabName in tabNames) {
          if (jsonData.containsKey(tabName)) {
            reorderedJsonData[tabName] = jsonData[tabName];
          }
        }

        // Save updated data to SharedPreferences
        prefs.setString('tabs_data', jsonEncode(reorderedJsonData));
      }
    }
  }
}
