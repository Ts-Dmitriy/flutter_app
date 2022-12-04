import 'dart:ui';
import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
    "registr": "Registration",
    "inName":"Enter your name",
    "inEmail":"Enter email address",
    "inPhone": "Enter your phone number",
    "inPassword": "Enter password",
    "butRegister":"Register",
    "toLogin":"Have account",
    "formNotValid":"Form is not valid! Please review and correct",
    "validNameReq":"Name is reqired.",
    "validNameAlph":"Please enter alphabetical characters.",
    "validEmailEmpty":"Email cannot be empty",
    "validEmailAddress":"Invalid email address",
    "validPassword":"8 character required for password",
    "registrSuccessful":"Registration successful",
    "verified":"is now a verified register form",
    "cont":"continue",
    "logPage":"Hello,\nWelcome Back",
    "forgotPass":"Forgot your password?",
    "signin":"Sign in",
  };

  static const Map<String,dynamic> kk = {
    "registr":"Тіркелу",
    "inName":"Атыңызды енгізіңіз",
    "inEmail":"Электрондық пошта мекенжайын енгізіңіз",
    "inPhone": "Телефон нөмірін енгізіңіз",
    "inPassword": "Пароль енгізіңіз",
    "butRegister":"Тіркеу",
    "toLogin":"Тіркелгі бар",
    "formNotValid":"Пішін жарамсыз! Қарап шығыңыз және түзетіңіз",
    "validNameReq":"Аты міндетті.",
    "validNameAlph":"Алфавиттік таңбаларды енгізіңіз.",
    "validEmailEmpty":"Электрондық пошта бос болуы мүмкін емес",
    "validEmailAddress":"Жарамсыз электрондық пошта мекенжайы",
    "validPassword":"Құпия сөз үшін 8 таңба қажет",
    "registrSuccessful":"Тіркелу сәтті өтті",
    "verified":"Сіз қазір расталды",
    "cont":"Жалғастыру",
    "logPage":"Сәлем,\nҚош келдіңіз",
    "forgotPass":"Құпия сөзіңізді ұмыттыңыз ба?",
    "signin":"Кіру",
  };

  static const Map<String,dynamic> ru = {
    "registr":"Регистрация",
    "inName":"Введите свое имя",
    "inEmail":"Введите адресс электронной почты",
    "inPhone": "Введите свой номер телефона",
    "inPassword": "Введите пароль",
    "butRegister":"Зарегистрировать",
    "toLogin":"Есть аккаунт",
    "formNotValid":"Форма недействительна! Пожалуйста, просмотрите и исправьте",
    "validNameReq":"Имя обязательно.",
    "validNameAlph":"Пожалуйста, введите алфавитные символы.",
    "validEmailEmpty":"Электронная почта не может быть пустой",
    "validEmailAddress":"Неверный адрес электронной почты",
    "validPassword":"8 символов требуется для пароля",
    "registrSuccessful":"Регистрация прошла успешно",
    "verified":"Вы теперь верифицированы",
    "cont":"Продолжить",
    "logPage":"Здравствуйте,\nС возвращением",
    "forgotPass":"Забыли пароль?",
    "signin":"Войти",
  };
  static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "kk": kk, "ru": ru};
}