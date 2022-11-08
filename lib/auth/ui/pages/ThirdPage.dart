
import 'package:flutter/material.dart';

class ThirdPage extends  StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green,
            fontSize: 45,
          ),
        ),
      ),
    );
  }
}