import 'dart:ui';
import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
    "hello_text": "Hi"
  };
  static const Map<String,dynamic> kk = {
    "hello_text": "Салем"
  };
  static const Map<String,dynamic> ru = {
    "hello_text": "Привет"
  };
  static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "kk": kk, "ru": ru};
}