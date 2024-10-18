
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matomete_kensaku/models/enum.dart';
import 'package:matomete_kensaku/ui/pages/force_update_page/update_request_provider.dart';
import 'package:matomete_kensaku/services/shared_preferences_repository.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdatePromptDialog extends ConsumerWidget {
  const UpdatePromptDialog({
    super.key,
    required this.updateRequestType,
  });

  final UpdateRequestType? updateRequestType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      // AndroidのBackボタンで閉じられないようにする
      onWillPop: () async => false,
      child: CupertinoAlertDialog(
        title: const Text('アプリが更新されました。\n\n最新バージョンのダウンロードをお願いします。'),
        actions: [
          if (updateRequestType == UpdateRequestType.cancelable)
            TextButton(
              onPressed: () async {
                Navigator.pop(context);
                await ref
                    .watch(sharedPreferencesRepositoryProvider)
                    .save<String>(
                      SharedPreferencesKey.cancelledUpdateDateTime,
                      DateTime.now().toString(),
                    );
                ref.invalidate(updateRequesterProvider);
              },
              child: const Text('キャンセル'),
            ),
          TextButton(
            onPressed: () {
              // App Store or Google Play に飛ばす処理
              final url = Uri.parse('https://www.apple.com/jp/app-store/');
              launchUrl(url);
            },
            child: const Text('アップデートする'),
          ),
        ],
      ),
    );
  }
}
