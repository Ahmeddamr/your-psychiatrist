  import 'package:flutter/material.dart';
  import 'package:your_psychiatrist/core/routing/app_router.dart';
  import 'firebase_options.dart';
  import 'package:firebase_core/firebase_core.dart';
  import 'psychiatrist.dart';

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    runApp(
      Psychiatrist(
        appRouter: AppRouter(),
      ),
    );
  }