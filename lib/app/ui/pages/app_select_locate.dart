import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:prog1/translations/locale_keys.g.dart';

class AppSelectPage extends StatefulWidget {
  const AppSelectPage({Key? key}) : super(key: key);

  @override
  State<AppSelectPage> createState() => _AppSelectPageState();
}

class _AppSelectPageState extends State<AppSelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          margin:  EdgeInsets.all(100),
          height: 310,
          width: 200,

          color: Colors.blueGrey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OutlinedButton(
                  onPressed: () async {
                    await context.setLocale(Locale('ru'));
                  },
                  child: Text("RU")),
              SizedBox(height: 10),
              OutlinedButton(
                  onPressed: () async {
                    await context.setLocale(Locale('en'));
                  },
                  child: Text("EN")),
              SizedBox(height: 10),
              OutlinedButton(
                  onPressed: () async {
                    await context.setLocale(Locale('kk'));
                  },
                  child: Text("KZ")),
                  Text(LocaleKeys.hello_text.tr()),
              SizedBox(height: 10),
              CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xff4c505b),
                child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                    )),
              )

            ],
          ),
        ),
      ),
    );
  }
}