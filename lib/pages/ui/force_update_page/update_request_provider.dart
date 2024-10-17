// update_requester_provider.dart
import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matomete_kensaku/models/enum.dart';
import 'package:matomete_kensaku/models/src/update_info.dart';
import 'package:matomete_kensaku/pages/ui/force_update_page/remote_config_provider.dart';
import 'package:matomete_kensaku/services/shared_preferences_repository.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:version/version.dart';

final updateRequesterProvider = FutureProvider<UpdateRequestType>((ref) async {
  final remoteConfig = await ref.watch(remoteConfigProvider.future);
  bool fetched = await remoteConfig.fetchAndActivate();
  if (!fetched) {
    print("RemoteConfig fetch failed.");
  }
  
  // Firebase の RemoteConfigコンソールで指定したキーを使って値を取得
  final string = remoteConfig.getString('update_info');
  if (string.isEmpty) {
    print("RemoteConfig 'update_info' is empty.");
    return UpdateRequestType.not;
  }

  // JSON to Map
  late Map<String, Object?> map;
  try {
    map = json.decode(string) as Map<String, Object?>;
  } catch (e) {
    print("Failed to decode 'update_info' JSON: $e");
    return UpdateRequestType.not;
  }

  // Map(JSON) to Entity
  late UpdateInfo updateInfo;
  try {
    updateInfo = UpdateInfo.fromJson(map);
  } catch (e) {
    print("Failed to parse 'UpdateInfo': $e");
    return UpdateRequestType.not;
  }

  // 現在のアプリケーションを取得
  final appPackageInfo = await PackageInfo.fromPlatform();
  late Version appVersion;
  try {
    appVersion = Version.parse(appPackageInfo.version);
  } catch (e) {
    print("Failed to parse app version: $e");
    return UpdateRequestType.not;
  }

  final latestVersion = Version.parse(updateInfo.latestVersion);
  final requiredVersion = Version.parse(updateInfo.requiredVersion);
  final enabledAt = updateInfo.enabledAt;

  // shared_preferencesで保存ている「キャンセル」を押下した日時を取得
  final cancelledUpdateDateTime = await ref
      .watch(sharedPreferencesRepositoryProvider)
      .fetch<String>(SharedPreferencesKey.cancelledUpdateDateTime);

  // 現在のバージョンより新しいバージョンが指定されているか
  final hasNewVersion =
      latestVersion > appVersion || requiredVersion > appVersion;

  // ダイアログ表示が有効かどうか
  late bool isEnabled;
  if (enabledAt.isBefore(DateTime.now())) {
    isEnabled = cancelledUpdateDateTime == null ||
        enabledAt.isAfter(DateTime.parse(cancelledUpdateDateTime));
  } else {
    isEnabled = false;
  }

  if (!isEnabled || !hasNewVersion) {
    return UpdateRequestType.not;
  }

  return (latestVersion > appVersion && requiredVersion <= appVersion)
      ? UpdateRequestType.cancelable
      : UpdateRequestType.forcibly;
});
