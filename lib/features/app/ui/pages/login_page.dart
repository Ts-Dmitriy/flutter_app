import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:prog1/services/shared_preference.dart';
import 'package:prog1/features/app/ui/pages/register_page.dart';
import 'package:prog1/features/app/ui/pages/welcome_page.dart';
import 'package:prog1/features/app/ui/pages/choose_lang.dart';
import 'package:prog1/translations/locale_keys.g.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
 bool _hidePass = true;

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

    final _emailController = TextEditingController();
  final _passController = TextEditingController();





 void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  @override
  void dispose(){
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
         key: _scaffoldKey,
         appBar: AppBar(elevation: 0,
           leading: Builder(
    builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(Icons.translate),
        onPressed: () {Navigator.push(context,MaterialPageRoute(
                              builder: (context) => SelectLangPage()),
                        );},
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  ),
         backgroundColor: Colors.transparent,),

        body: Form(
           key: _formKey,
            child: Stack(children: [Container( padding: EdgeInsets.only(left: 100, top: 130),
              child: Text(
                LocaleKeys.logPage.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 33, fontWeight:FontWeight.w200),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextFormField(
                  controller: _emailController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: LocaleKeys.inEmail.tr(),
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                  validator: validatelloginEmail,
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value) =>  value!,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(

                  controller: _passController,
                  obscureText: _hidePass,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: LocaleKeys.inPassword.tr(),
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                suffixIcon: IconButton(
                  icon:
                      Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _hidePass = !_hidePass;
                    });
                  },
                ),
                                ),
                                validator: _validateloginPassword,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    LocaleKeys.forgotPass.tr(),
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color.fromARGB(255, 75, 95, 149),
                                      fontSize: 18,
                                    ),
                                  )),
                            ],
                            ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                 ElevatedButton(
                                  
                                    style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(20.0),
                                       side: BorderSide(color: Color.fromRGBO(0, 0, 0, 1))),
                                       fixedSize: Size(160, 40)
                                    ),
                                    onPressed: _submitloginForm,
                                    child: Text(LocaleKeys.signin.tr()),
                                    )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                               Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('OR', 
                                      style: TextStyle(
                                      color: Color(0xff4c505b),
                                      fontSize: 18),)
                            ],
                            ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                              Navigator.push(context,MaterialPageRoute(
                              builder: (context) => MyRegister()),
                        );
                                },
                                child: Text(
                                  LocaleKeys.registr.tr(),
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color.fromARGB(255,75, 95, 149),
                                      fontSize: 18),
                                ),
                                style: ButtonStyle(),
                              ),
                            ],
                          ),
                        ],
                        ),
                      ),
                ],
                ),
              ),
            ),
            ]
            ),
            

        ),
      ),
    );
  }
  
  void _submitloginForm() {
    
    if (_formKey.currentState!.validate()) {
      // signIn();
      _formKey.currentState!.save();
      sharedPreference.saveUserEmail(_emailController.text);
      sharedPreference.saveUserPhone(_passController.text);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyWelcomePage(),
        ),
      );
    } else {
      _showMessage(message: LocaleKeys.formNotValid.tr());
    }
  }

    String? validatelloginEmail(String? value) {
    if (value == null) {
      return LocaleKeys.validEmailEmpty.tr();
    } else if (!_emailController.text.contains('@')) {
      return LocaleKeys.validEmailAddress.tr();
    } else {
      return null;
    }
  }


  String? _validateloginPassword(String? value) {
    if (_passController.text.length <= 7) {
      return LocaleKeys.validPassword.tr();
    }  else {
      return null;
    }
  }
  void _showMessage({required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        backgroundColor: const Color(0xFFEF5350),
        behavior: SnackBarBehavior.floating,
        content: Text(
          message,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 15
          ),),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
      ),
    );
  }
    void signIn() {
     FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(), 
      password: _passController.text.trim(), 
      
      );
  }

}