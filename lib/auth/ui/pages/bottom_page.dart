import 'package:prog1/main.dart';
import 'package:flutter/material.dart';
import 'register_page.dart';
import 'MainPage.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';
import 'FourthPage.dart';
import 'package:prog1/constant/app_colors.dart';
import 'package:prog1/constant/app_text_style.dart';

class BottomPage extends StatefulWidget {
  BottomPage({Key? key}) : super(key: key);

  @override
  _BottomPageState createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {

  int pageIndex = 0;
  final pages = [
     MainPage(),
     SecondPage(),
    MapGoogle(),
     FourthPage(),
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
                color: Color.fromARGB(255, 68, 68, 68),
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
              Icons.work_outline,
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
              Icons.apps_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.apps_outlined,
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
              Icons.account_box,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.account_box_outlined,
              color: Color.fromARGB(255, 68, 68, 68),
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}