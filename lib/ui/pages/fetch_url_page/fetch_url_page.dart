import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomete_kensaku/models/enum.dart';
import 'package:matomete_kensaku/models/src/category_tab.dart';
import 'package:matomete_kensaku/themes/app_colors.dart';
import 'package:matomete_kensaku/ui/pages/fetch_url_page/fetch_url_page_controller.dart';

class FetchsUrlPage extends HookConsumerWidget {
  final int currentTabIndex;
  final String categoryTitle;
  final String category;
  const FetchsUrlPage(
      {super.key,
      required this.currentTabIndex,
      required this.category,
      required this.categoryTitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final linkInfoList =
        ref.watch(fetchUrlPageProvider.select((s) => s.linkInfo));

    useEffect(() {
      ref.watch(fetchUrlPageProvider.notifier).fetchUrlRequest(category);
      return null;
    }, []);

    return Scaffold(
      backgroundColor: AppColors.appBackGround,
      appBar: AppBar(
        backgroundColor: AppColors.appBackGround,
        title: Text(categoryTitle),
      ),
      body: linkInfoList.isEmpty
          ? SizedBox()
          : ListView.builder(
              itemCount: linkInfoList.length,
              itemBuilder: (BuildContext context, int index) {
                final linkInfo = linkInfoList[index];
                final url = Uri.parse(linkInfo.url);

                final favicon = '${url.scheme}://${url.host}/favicon.ico';

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Row(
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
                          Expanded(child: Text(linkInfo.title)),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              ref
                                  .watch(fetchUrlPageProvider.notifier)
                                  .addItemToTab(
                                      0, linkInfo.title, linkInfo.url);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("${linkInfo.title}を追加しました"),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                      Divider(
                        height: 1,
                      )
                    ],
                  ),
                );
              }),
    );
  }
}
