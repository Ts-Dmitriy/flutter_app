
import 'package:flutter/material.dart';

class FourthPage extends  StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green,
            fontSize: 45,
          ),
        ),
      ),
    );
  }
}