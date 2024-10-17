import 'package:flutter/material.dart';
import 'package:matomete_kensaku/themes/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackGround,
      appBar: AppBar(
        backgroundColor: AppColors.appBackGround,
        title: const Text("設定"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            _buildListTile(
                title: "フィードバックを送信",
                icon: const Icon(Icons.feedback_outlined),
                onTap: () {
                  final url = Uri.parse('https://forms.gle/HnzVrtgDsFQgmUcp8');
                  launchUrl(url);
                }),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile({
    required title,
    required Icon icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: ListTile(
        title: Row(
          children: [
            icon,
            const SizedBox(
              width: 30,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
