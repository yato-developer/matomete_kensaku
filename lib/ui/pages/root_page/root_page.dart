import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matomete_kensaku/ui/pages/add_url_page/add_url_page.dart';
import 'package:matomete_kensaku/ui/pages/category_list_page/category_list_page.dart';
import 'package:matomete_kensaku/ui/pages/fetch_url_page/fetch_url_page.dart';
import 'package:matomete_kensaku/ui/pages/home_page/home_page.dart';
import 'package:matomete_kensaku/ui/pages/root_page/root_page_controller.dart';
import 'package:matomete_kensaku/ui/pages/setting_page/setting_page.dart';
import 'package:matomete_kensaku/themes/app_colors.dart';

class RootPage extends ConsumerWidget {
  RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(rootPageProvider.select((s) => s.tabIndex));
    final _tabs = [
      const HomePage(),
      const SizedBox.shrink(),
      const SettingPage(),
    ];

    return Scaffold(
      body: _tabs[index],
      bottomNavigationBar: NavigationBar(
        backgroundColor: AppColors.appBackGround,
        indicatorColor: Colors.grey.shade300,
        selectedIndex: index,
        onDestinationSelected: (newIndex) {
          if (newIndex == 1) {
            // 「追加」をタップしたときにBottom Sheetを表示
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
              ),
              backgroundColor: AppColors.appBackGround,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return FractionallySizedBox(
                  heightFactor: 0.3,
                  widthFactor: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text(
                          'URLを追加',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => AddUrlPage(currentTabIndex: 0,)),
                              );
                            },
                            child: Text("自分でURLを追加")),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => CategoryListPage()),
                            );
                          },
                          child: const Text('URLを探す'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            ref.watch(rootPageProvider.notifier).changeTab(newIndex);
          }
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'ホーム',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.add),
            icon: Icon(Icons.add_outlined),
            label: '追加',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings_outlined),
            label: '設定',
          ),
        ],
      ),
    );
  }
}
