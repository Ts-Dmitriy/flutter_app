import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prog1/model/profile.dart';
import 'package:prog1/services/shared_preference.dart';
import 'package:lottie/lottie.dart';

import '../../bloc/profile_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ProfileBloc profileBloc;
  Profile? profile;
  String? userName = sharedPreference.getUserName;
  String? userEmail= sharedPreference.getUserEmail;
   String? userPhone= sharedPreference.getUserPhone;

  @override
  void initState() {
    profileBloc = ProfileBloc();
    profileBloc.add(FetchedProfileEvent());
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(
        bloc: profileBloc,
        builder: (context, state) {
          if (state is LoadingProfileState) {
            return Center(
              child: Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              child:Lottie.asset('assets/animations/98432-loading.json')
            )
            );
          }
          if (state is LoadedProfileState) {
            profile = state.profile;
            return buildBody();
          }
          if (state is FailureProfileState) {
            return Center(
              child: Text("Error"),
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget buildBody() {
    return Container(
      padding: EdgeInsets.only(top: 50, right: 20, left: 20),
      
      child: Column(
        children: [
          Container(

          child:  CircleAvatar(
          backgroundImage: AssetImage('assets/images/1.jpg'),
          radius: 45.0
        )
          ),

          SizedBox(
            height: 20,
          ),
          
          Container(
              alignment: Alignment.centerLeft,         
              child:
              Text.rich(
                TextSpan(
                  text: 'Name: ',
                        style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                     ),
                    children: <TextSpan>[
                      TextSpan(
                        text: userName,
                        
                        style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                     ),
                     ),
                     ],
                 ),
              ),
              
            ),          
          Container(
              alignment: Alignment.centerLeft,
              
              child:
              
              Text.rich(
                TextSpan(
                  text: 'Email: ',
                  
                        style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                     ),
                    children: <TextSpan>[
                      TextSpan(
                        text: userEmail,
                        
                        style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                     ),
                     ),
                     ],
                 ),
              ),
              
            ),          
          Container(
              alignment: Alignment.centerLeft,
              
              child:
              
              Text.rich(
                TextSpan(
                  text: 'Phone: ',
                  
                        style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                     ),
                    children: <TextSpan>[
                      TextSpan(
                        text: userPhone,
                        
                        style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                     ),
                     ),
                     ],
                 ),
              ),
              
            ),          
        ],
      ),
    );
  }
}