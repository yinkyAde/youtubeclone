import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:youtubeclone/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Clone Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const YoutubeHome(),
    );
  }
}


