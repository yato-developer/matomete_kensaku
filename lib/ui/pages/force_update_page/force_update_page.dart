import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matomete_kensaku/models/enum.dart';
import 'package:matomete_kensaku/ui/pages/force_update_page/widgets/update_prompt_dialog.dart';
import 'package:matomete_kensaku/ui/pages/force_update_page/update_request_provider.dart';
import 'package:matomete_kensaku/ui/pages/root_page/root_page.dart';

class ForceUpdatePage extends ConsumerWidget {
  const ForceUpdatePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // updateの確認
    final updateRequestType = ref.watch(updateRequesterProvider).whenOrNull(
          skipLoadingOnRefresh: false,
          data: (updateRequestType) => updateRequestType,
        );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // アップデートがあった場合
      if (updateRequestType == UpdateRequestType.cancelable ||
          updateRequestType == UpdateRequestType.forcibly) {
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return UpdatePromptDialog(
              updateRequestType: updateRequestType,
            );
          },
        );
      }
    });

    return RootPage();
  }
}
