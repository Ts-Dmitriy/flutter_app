import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:prog1/features/app/ui/pages/app.dart';
import 'package:prog1/services/shared_preference.dart';
import 'translations/codegen_loader.g.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await sharedPreference.init();
  await Firebase.initializeApp();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('kk'), Locale('ru'), Locale('en')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      assetLoader: CodegenLoader(),
      child: App(),
    ),
  );
}