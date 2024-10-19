import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matomete_kensaku/firebase_options.dart';
import 'package:matomete_kensaku/ui/pages/force_update_page/force_update_page.dart';
import 'package:matomete_kensaku/services/shared_preferences_repository.dart';
import 'package:matomete_kensaku/services/launch_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  LaunchService launchService = LaunchService();
  bool firstLaunch = await launchService.isFirstLaunch();

  if (firstLaunch) {
    print('This is the first launch');
  } else {
    print('This is not the first launch');
  }

  // SharedPreferencesの初期化
  late final SharedPreferences sharedPreferences;
  await Future.wait([
    Future(() async {
      sharedPreferences = await SharedPreferences.getInstance();
    }),
  ]);

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesRepositoryProvider.overrideWithValue(
          SharedPreferencesRepository(sharedPreferences),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForceUpdatePage(),
     //home: AdminHomePage(),
    );
  }
}
