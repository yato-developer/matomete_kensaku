import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matomete_kensaku/ui/components/my_button.dart';
import 'package:matomete_kensaku/ui/pages/home_page/home_page_controller.dart';
import 'package:matomete_kensaku/ui/pages/root_page/root_page_controller.dart';
import 'package:matomete_kensaku/themes/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = ref.watch(homePageProvider.select((s) => s.tabs));
    final tabNameList = tabs.map((tab) => tab.tabName).toList();
    final currentIndex =
        ref.watch(rootPageProvider.select((s) => s.currentTabIndex));

    String initialTabName;
    if (currentIndex >= 0 && currentIndex < tabNameList.length) {
      initialTabName = tabNameList[currentIndex];
    } else {
      initialTabName = '';
    }

    final tabNameController = TextEditingController(text: initialTabName);

    if (tabs.isEmpty) {
      return Scaffold(
        backgroundColor: AppColors.appBackGround,
        appBar: AppBar(
          backgroundColor: AppColors.appBackGround,
          title: const Text('Loading...'),
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    return DefaultTabController(
      length: tabNameList.length + 1,
      child: Builder(
        builder: (context) {
          final TabController tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              //tabの移動を検知
              ref
                  .watch(rootPageProvider.notifier)
                  .setCurrentTabIndex(tabController.index);
            }
          });

          return Scaffold(
            backgroundColor: AppColors.appBackGround,
            appBar: AppBar(
              backgroundColor: AppColors.appBackGround,
              title: TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.grey.shade300,
                dividerColor: Colors.transparent,
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                onTap: (index) {
                  if (index == tabNameList.length) {
                    _showAddTabDialog(context, ref);
                  } else {
                    if (index == currentIndex) {
                      _showEditTabDialog(context, ref, index,
                          tabController.length, tabNameController);
                    } else {
                      ref
                          .watch(rootPageProvider.notifier)
                          .setCurrentTabIndex(index);
                    }
                  }
                },
                tabs: [
                  ...tabNameList.map((tabName) {
                    return Tab(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(tabName),
                      ),
                    );
                  }),
                  const Tab(
                    child: Icon(Icons.add),
                  ),
                ],
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(60.0),
                child: _buildSearchTextField(ref),
              ),
            ),
            body: TabBarView(
              children: [
                ...tabs.map((tab) {
                  return tab.externalUrls.isEmpty
                      ? const Center(
                          child: Text("下の追加からURLを追加してください。"),
                        )
                      : ListView.builder(
                          itemCount: tab.externalUrls.length,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildSearchContainer(
                              index: index,
                              tabName: tab.tabName,
                              title: tab.externalUrls[index].title,
                              searchUrl: tab.externalUrls[index].url,
                            );
                          },
                        );
                }),
                const Center(
                  child: Text('タブを追加するには、上の＋ボタンを押してください。'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showAddTabDialog(BuildContext context, WidgetRef ref) {
    final newTabNameController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          backgroundColor: AppColors.appBackGround,
          contentPadding: const EdgeInsets.all(16.0),
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text("新しいタブを作成"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                decoration: const InputDecoration(hintText: "新しいタブ名"),
                controller: newTabNameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: MyButton(
                title: "追加",
                onPressed: () {
                  ref
                      .watch(homePageProvider.notifier)
                      .addTab(newTabNameController.text);
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }

  void _showEditTabDialog(BuildContext context, WidgetRef ref, int index,
      int length, TextEditingController tabNameController) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          backgroundColor: AppColors.appBackGround,
          contentPadding: const EdgeInsets.all(16.0),
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text("タブ名"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: tabNameController,
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: MyButton(
                    title: "消去",
                    onPressed: () {
                      if (length == 2) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('タブが一つしかないため、消去できません。'),
                          ),
                        );
                        Navigator.of(context).pop();

                        return;
                      }
                      ref.watch(homePageProvider.notifier).deleteTab(index);
                      Navigator.of(context).pop();
                    })),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: MyButton(
                    title: "更新",
                    onPressed: () {
                      ref
                          .watch(homePageProvider.notifier)
                          .updateTabName(index, tabNameController.text);
                      Navigator.of(context).pop();
                    })),
          ],
        );
      },
    );
  }

  Widget _buildSearchTextField(WidgetRef ref) {
    final search = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16),
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: search,
                  onChanged: (value) {
                    ref
                        .watch(homePageProvider.notifier)
                        .setSearchWord(search.text);
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "検索",
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  search.clear();
                  ref.watch(homePageProvider.notifier).setSearchWord("");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchContainer({
    required String tabName,
    required String title,
    required String searchUrl,
    required int index,
  }) {
    return Consumer(builder: (context, ref, _) {
      final text = ref.watch(homePageProvider.select((s) => s.searchWord));
      final url = Uri.parse('$searchUrl$text');
      final favicon = '${url.scheme}://${url.host}/favicon.ico';
      final titleController = TextEditingController(text: title);
      final urlController = TextEditingController(text: searchUrl);

      return Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
        child: GestureDetector(
          onTap: () async {
            launchUrl(url);
          },
          child: Container(
            height: 60,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Center(
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 25,
                    child: Image.network(
                      favicon,
                      errorBuilder: (BuildContext context, Object error,
                          StackTrace? stackTrace) {
                        return const SizedBox.shrink();
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return SimpleDialog(
                                    backgroundColor: AppColors.appBackGround,
                                    contentPadding: const EdgeInsets.all(16.0),
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8.0),
                                        child: Text("タブ名を編集"),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: TextField(
                                          controller: titleController,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: Text("URLを編集"),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: TextField(
                                          controller: urlController,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: MyButton(
                                            title: "消去",
                                            onPressed: () {
                                              ref
                                                  .watch(
                                                      homePageProvider.notifier)
                                                  .deleteItemFromTab(
                                                      tabName, index);
                                              Navigator.of(context).pop();
                                            }),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: MyButton(
                                              title: "OK",
                                              onPressed: () {
                                                ref
                                                    .watch(homePageProvider
                                                        .notifier)
                                                    .updateItemInTab(
                                                        ref.watch(rootPageProvider
                                                            .select((s) => s
                                                                .currentTabIndex)),
                                                        index,
                                                        titleController.text,
                                                        urlController.text);
                                                Navigator.of(context).pop();
                                              })),
                                    ],
                                  );
                                },
                              );
                            },
                            icon: const Icon(Icons.more_horiz))),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
