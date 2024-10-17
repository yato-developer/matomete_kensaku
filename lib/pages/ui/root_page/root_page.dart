import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matomete_kensaku/pages/ui/add_url_page/add_url_page.dart';
import 'package:matomete_kensaku/pages/ui/home_page/home_page.dart';
import 'package:matomete_kensaku/pages/ui/root_page/root_page_controller.dart';


import 'package:matomete_kensaku/pages/ui/setting_page/setting_page.dart';
import 'package:matomete_kensaku/themes/app_colors.dart';

class RootPage extends ConsumerWidget {
  RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTabIndex =
        ref.watch(rootPageProvider.select((s) => s.currentTabIndex));
    final _tabs = [
      const HomePage(),
      AddUrlPage(
          currentTabIndex: currentTabIndex), // ここで AddUrlPage を通常のタブとして扱う
      const SettingPage(),
    ];
    final index = ref.watch(rootPageProvider.select((s) => s.tabIndex));

    return Scaffold(
      body: _tabs[index], // 選択されたタブのページを表示
      bottomNavigationBar: NavigationBar(
        backgroundColor: AppColors.appBackGround,
        indicatorColor: Colors.grey.shade300,
        selectedIndex: index,
        onDestinationSelected: (newIndex) {
          ref.watch(rootPageProvider.notifier).changeTab(newIndex);
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
