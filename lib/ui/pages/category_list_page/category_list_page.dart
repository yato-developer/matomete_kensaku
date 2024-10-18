import 'package:flutter/material.dart';
import 'package:matomete_kensaku/models/enum.dart';
import 'package:matomete_kensaku/themes/app_colors.dart';
import 'package:matomete_kensaku/ui/pages/fetch_url_page/fetch_url_page.dart';

class CategoryListPage extends StatelessWidget {
  const CategoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackGround,
      appBar: AppBar(
        backgroundColor: AppColors.appBackGround,
        title: Text("カテゴリー"),
      ),
      body: ListView.builder(
          itemCount: CategoryType.values.length,
          itemBuilder: (context, index) {
            //return Text(CategoryType.values[index].displayStatus());
            return ListTile(
              title: Text(CategoryType.values[index].displayStatus()),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => FetchsUrlPage(
                          currentTabIndex: 0,
                          category: CategoryType.values[index].name,
                          categoryTitle:
                              CategoryType.values[index].displayStatus())),
                );
              },
            );
          }),
    );
  }
}
