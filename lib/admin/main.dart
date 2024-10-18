import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matomete_kensaku/firebase_options.dart';
import 'package:matomete_kensaku/ui/pages/force_update_page/force_update_page.dart';
import 'package:matomete_kensaku/services/shared_preferences_repository.dart';
import 'package:matomete_kensaku/services/launch_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForceUpdatePage(),
    );
  }
}
