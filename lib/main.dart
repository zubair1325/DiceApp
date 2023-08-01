import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int left = 6, right = 6;
  @override
  Widget build(BuildContext context) {
    // up = 5;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text(
              "Dice",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      left = Random().nextInt(6) + 1;
                      right = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('image/dice$left.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      left = Random().nextInt(6) + 1;
                      right = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('image/dice$right.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
