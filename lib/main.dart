import 'package:flutter/material.dart';
import 'package:prog1/auth/ui/pages/login_page.dart';
import 'package:prog1/auth/ui/pages/register_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:prog1/app/ui/pages/app_select_locate.dart';
import 'package:prog1/auth/ui/pages/bottom_page.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: [Locale('ru'), Locale('en'), Locale('kk')],
      path: 'assets/translations',
      fallbackLocale: Locale('ru'),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'FlutterDemo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      debugShowCheckedModeBanner: false,
      home: AppSelectPage(),
      routes: {
        'register': (context) => MyRegister(),
        'login': (context) => MyLogin(),
        'bottom': (context) => BottomPage(),
      },

    );

  }
}