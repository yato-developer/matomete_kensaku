import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matomete_kensaku/pages/components/my_button.dart';
import 'package:matomete_kensaku/pages/ui/add_url_page/add_url_page_controller.dart';
import 'package:matomete_kensaku/themes/app_colors.dart';

class AddUrlPage extends ConsumerWidget {
  final int currentTabIndex;
  const AddUrlPage({super.key, required this.currentTabIndex});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController titleController = TextEditingController();
    TextEditingController urlController = TextEditingController();
    ScrollController scrollController = ScrollController();
    FocusNode titleFocusNode = FocusNode();
    FocusNode urlFocusNode = FocusNode();

    void scrollToBottom() {
      Future.delayed(Duration(milliseconds: 300), () {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    }

    titleFocusNode.addListener(() {
      if (titleFocusNode.hasFocus) {
        scrollToBottom();
      }
    });

    urlFocusNode.addListener(() {
      if (urlFocusNode.hasFocus) {
        scrollToBottom();
      }
    });

    return Scaffold(
      backgroundColor: AppColors.appBackGround,
      appBar: AppBar(
        backgroundColor: AppColors.appBackGround,
        title: const Text("URLの追加"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            controller: scrollController,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Center(
                      child: const Text(
                        "検索キーワードを除外したURLを追加してください。",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "例: \n除外前 : https://www.amazon.co.jp/s?k=iPhone\n除外後 : https://www.amazon.co.jp/s?k=",
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(height: 30),
                    const Text("タイトル"),
                    Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          controller: titleController,
                          focusNode: titleFocusNode,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "タイトル",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text("URL"),
                    Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          controller: urlController,
                          focusNode: urlFocusNode,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "URL",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: MyButton(
                        title: "追加",
                        onPressed: () {
                          if (titleController.text.isEmpty ||
                              urlController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("タイトルとURLは必須です。"),
                              ),
                            );
                          } else {
                            // Proceed to add item if fields are not empty
                            ref.watch(addUrlPageProvider.notifier).addItemToTab(
                                  currentTabIndex,
                                  titleController.text,
                                  urlController.text,
                                );
                            titleController.clear();
                            urlController.clear();

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("URLを追加しました。"),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
