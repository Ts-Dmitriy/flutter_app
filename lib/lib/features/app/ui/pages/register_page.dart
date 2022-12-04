import 'dart:convert';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:prog1/constant/app_colors.dart';
import 'package:prog1/features/app/ui/pages/login_page.dart';
import 'package:prog1/features/app/ui/pages/welcome_page.dart';
import 'package:prog1/services/shared_preference.dart';
import 'package:prog1/translations/locale_keys.g.dart';
import 'package:prog1/features/app/ui/pages/choose_lang.dart';
import 'package:http/http.dart' as http;  
class MyRegister extends StatefulWidget {
  
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  bool _hidePass = true;
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();



    @override
  void dispose(){
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/register.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
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
        ),
        body: Form(
          key: _formKey,
          child: Stack(  children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 30),
              child: Text(
                LocaleKeys.registr.tr(),
                style: TextStyle(color: Colors.white, fontSize: 33, fontWeight:FontWeight.w200),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35, ),
                      child: Column(
                        children: [


                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            controller: _nameController,
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
                                hintText: LocaleKeys.inName.tr(),
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                                validator: validateName,
                                onSaved: (value) => value!,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                             controller: _emailController,
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
                            validator: validateEmail,
                            onSaved: (value) => value!,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                  controller: _phoneController,
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
                                hintText: LocaleKeys.inPhone.tr(),
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                                onSaved: (value) => value!,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            controller: _passController,
                            obscureText: _hidePass,
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
              validator: _validatePassword,
                          ),
                          SizedBox(
                            height: 40,
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
                                    onPressed: _submitForm,
                                    child: Text(LocaleKeys.butRegister.tr()),
                                    )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: (){
                              Navigator.push(context,MaterialPageRoute(
                              builder: (context) => MyLogin()),
                        );
                                },
                                
                                child: Text(
                                  LocaleKeys.toLogin.tr(),
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color.fromARGB(255,75, 95, 149),
                                      fontSize: 18),
                                ),
                                style: ButtonStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],),
        
        ),
      ),
    );

  }
    void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    const url = 'https://flutter-app-973f7-default-rtdb.firebaseio.com/user.json';
    http.post(Uri.parse(url), body: jsonEncode({
      'name': _nameController.text,
      'phone': _phoneController.text,
      'Email':_emailController.text,
    }
    )
    ).then((response){
      print(json.decode(response.body));
      String userName = json.decode(response.body)['name'];
      _showDialog(name: '$userName');
      sharedPreference.saveUserName(_nameController.text);
      sharedPreference.saveUserEmail(_emailController.text);
      sharedPreference.saveUserPhone(_phoneController.text);
    });
      // Navigator.push(context,MaterialPageRoute(
      //                         builder: (context) => LoginPage()));

    } else {
      _showMessage(message: LocaleKeys.formNotValid.tr());
    }
  }





  String? validateName(String? value) {
    final nameExp = RegExp(r'^[A-Za-z ]+$');
    if (value == null) {
      return LocaleKeys.validNameReq.tr();
    } else if (!nameExp.hasMatch(value)) {
      return LocaleKeys.validNameAlph.tr();
    } else {
      return null;
    }
  }

  bool validatePhoneNumber(String input) {
    final phoneExp = RegExp(r'^\(\d\d\d\)\d\d\d\-\d\d\d\d$');
    return phoneExp.hasMatch(input);
  }

  String? validateEmail(String? value) {
    if (value == null) {
      return LocaleKeys.validEmailEmpty.tr();
    } else if (!_emailController.text.contains('@')) {
      return LocaleKeys.validEmailAddress.tr();
    } else {
      return null;
    }
  }

  String? _validatePassword(String? value) {
    if (_passController.text.length <= 8) {
      return LocaleKeys.validPassword.tr();
    } else {
      return null;
    }
  }
 void _showMessage({required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        backgroundColor: Colors.red,
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
      ),
    );

}
    void _showDialog({required String name}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            LocaleKeys.registrSuccessful.tr(),
            style: TextStyle(
              color: Colors.green,
            ),
          ),
          content: Text(
            LocaleKeys.verified.tr(),
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
            ),
          ),
          actions: [
            ElevatedButton(                         
      style: ElevatedButton.styleFrom(
     shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(color: Color.fromRGBO(0, 0, 0, 1))),
                    fixedSize: Size(160, 40)
                     ),
              onPressed: (){
                 Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyWelcomePage()));
              },
            child: Text(LocaleKeys.cont.tr()),
                                    
            
            ),
          ],
        );
      },
    );
  }

}