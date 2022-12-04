import 'package:flutter/material.dart';
import 'package:prog1/features/app/ui/pages/login_page.dart';
import 'package:prog1/features/news/ui/page/news_page.dart';
import 'package:prog1/features/map/ui/page/map_page.dart';
import 'package:prog1/features/qr/ui/page/qr_page.dart';
import 'package:prog1/features/profile/ui/page/profile_page.dart';
import 'package:prog1/constant/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:prog1/features/animations/ui/page/animation_page.dart';

class BottomPage extends StatefulWidget {
  BottomPage({Key? key}) : super(key: key);

  @override
  _BottomPageState createState() => _BottomPageState();

}
@override
class _BottomPageState extends State<BottomPage> {
final FirebaseAuth auth = FirebaseAuth.instance;
  //signout function
  signOut() async {
    await auth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyLogin()));
  }

  int pageIndex = 0;
  final pages = [
     NewsPage(),
     QrPage(),
     MapGoogle(),
     MyAnimation(),
     ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(
          'Aplication',
          style: TextStyle(
              color: AppColors.HomeColor,
              fontSize: 25,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white70,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),

            floatingActionButton: FloatingActionButton(
        onPressed: () {
          signOut();
        },
        child: Icon(Icons.logout_rounded),
        backgroundColor: AppColors.SecondaryColor,
      ),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: AppColors.SecondaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon:pageIndex == 0
          ? const Icon(
                Icons.home_filled,
                color: Colors.white,
                size: 35,
              )
          : const Icon(
                Icons.home_outlined,
                color: Color(0xFF444444),
                size: 35,
              ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon:pageIndex == 1
                ? const Icon(
              Icons.work_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.qr_code_outlined,
              color: Color.fromARGB(255, 68, 68, 68),
              size: 35,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon:pageIndex == 2
                ? const Icon(
              Icons.map,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.map,
              color: Color.fromARGB(255, 68, 68, 68),
              size: 35,
            ),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon:pageIndex == 3
          ? const Icon(
                Icons.mood_outlined,
                color: Colors.white,
                size: 35,
              )
          : const Icon(
                Icons.mood_outlined,
                color: Color(0xFF444444),
                size: 35,
              ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 4;
              });
            },
            icon:pageIndex == 4
                ? const Icon(
              Icons.person,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.person,
              color: Color.fromARGB(255, 68, 68, 68),
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}