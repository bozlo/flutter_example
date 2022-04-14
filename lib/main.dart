import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'ScreenA.dart';
import 'ScreenB.dart';
import 'ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator demo',
      initialRoute: '/',
      routes: {
        '/': (context)=> const ScreenA(),
        '/b': (context)=>const ScreenB(),
        '/c': (context)=>const ScreenC(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
