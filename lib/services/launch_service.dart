import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LaunchService {
  Future<bool> isFirstLaunch() async {
    final prefs = await SharedPreferences.getInstance();

    bool? hasLaunched = prefs.getBool('isFirstLaunch');
    if (hasLaunched == null) {
      await prefs.setBool('isFirstLaunch', false);

      await _initializeTabsData();

      return true;
    }

    return false;
  }

  Future<void> _initializeTabsData() async {
    Map<String, List<Map<String, String>>> initialTabsData = {
      '新しいタブ': [
        {'title': 'Google', 'url': 'https://www.google.co.jp/search?q='},
        {'title': 'Amazon', 'url': 'https://www.amazon.co.jp/s?k='},
        {'title': '楽天市場', 'url': 'https://search.rakuten.co.jp/search/mall/'},
        {
          'title': 'Yahoo!ショッピング',
          'url':
              'https://shopping.yahoo.co.jp/search?first=1&tab_ex=commerce&fr=shp-prop&mcr=1680f298ecdd83b772d13d3e9fc5609b&ts=1728719080&sretry=1&p='
        },
        {'title': 'メルカリ', 'url': 'https://jp.mercari.com/search?keyword='},
        {
          'title': 'Youtube',
          'url': 'https://www.youtube.com/results?search_query='
        },
      ],
    };

    saveTabs(initialTabsData);
  }

  Future<void> saveTabs(Map<String, List<Map<String, String>>> tabsData) async {
    final prefs = await SharedPreferences.getInstance();
    String jsonString = jsonEncode(tabsData);
    prefs.setString('tabs_data', jsonString);
  }
}
