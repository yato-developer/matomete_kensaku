import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matomete_kensaku/admin/pages/admin_home_page/admin_home_page_controller.dart';
import 'package:matomete_kensaku/models/enum.dart';
import 'package:matomete_kensaku/themes/app_colors.dart';

class AdminHomePage extends ConsumerWidget {
  AdminHomePage({super.key});

  final titleController = TextEditingController();

  final urlController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.appBackGround,
      appBar: AppBar(
        backgroundColor: AppColors.appBackGround,
        title: Text("管理画面"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            Text("カテゴリー"),
            DropdownButton<CategoryType>(
              value: ref.watch(adminHomePageProvider.select((s) => s.category)),
              hint: Text("選択してください"),
              onChanged: (CategoryType? newValue) {
                ref
                    .watch(adminHomePageProvider.notifier)
                    .setCategory(newValue!);
              },
              items: CategoryType.values
                  .map<DropdownMenuItem<CategoryType>>((CategoryType category) {
                return DropdownMenuItem<CategoryType>(
                  value: category,
                  child: Text(category.displayStatus()),
                );
              }).toList(),
            ),
            Text("タイトル"),
            TextField(
              controller: titleController,
            ),
            SizedBox(
              height: 30,
            ),
            Text("URL"),
            TextField(controller: urlController),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  ref
                      .watch(adminHomePageProvider.notifier)
                      .addUrl(titleController.text, urlController.text);
                  titleController.clear();
                  urlController.clear();
                },
                child: Text("追加"))
          ],
        ),
      ),
    );
  }
}
