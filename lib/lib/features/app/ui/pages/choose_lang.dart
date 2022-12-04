import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:prog1/translations/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prog1/features/app/bloc/app_bloc.dart';
import 'package:prog1/features/app/ui/pages/register_page.dart';

class SelectLangPage extends StatefulWidget {
  const SelectLangPage({Key? key}) : super(key: key);

  @override
  State<SelectLangPage> createState() => _SelectLangPageState();
}

class _SelectLangPageState extends State<SelectLangPage> {
  @override

    late AppBloc appBloc;

  @override
  void initState() {
    appBloc = BlocProvider.of<AppBloc>(context);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/locale.jpg'), fit: BoxFit.cover),
      ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(

        child:Container(

          height: 300,
          width: 300,
          decoration: BoxDecoration(
          color: Color.fromRGBO(18, 88, 138, 1).withOpacity(0.25),

          shape: BoxShape.circle,
          
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              OutlinedButton(
              
                  onPressed: () async {
                    await context.setLocale(Locale('ru'));
                    appBloc.add(AppStartedEvent());
                      Navigator.push( context,
                        MaterialPageRoute(
                          builder: (context) => MyRegister(),
                        ),
                      );
                  },
                  
                  child: Text("RU")),
              SizedBox(height: 10),
              OutlinedButton(
                  onPressed: () async {
                    await context.setLocale(Locale('en'));
                    appBloc.add(AppStartedEvent());
                        Navigator.push( context,
                          MaterialPageRoute(
                            builder: (context) => MyRegister(),
                          ),
                        );
                  },
                  child: Text("EN")),
              SizedBox(height: 10),
              OutlinedButton(
                  onPressed: () async {
                    await context.setLocale(Locale('kk'));
                    appBloc.add(AppStartedEvent());
                      Navigator.push( context,
                        MaterialPageRoute(
                          builder: (context) => MyRegister(),
                        ),
                      );
                  },
                  child: Text("KZ")),
              SizedBox(height: 10),

            ],
          ),
        ),
      ),
    ));
  }
}