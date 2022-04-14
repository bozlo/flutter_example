import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack bar demo',
      home: MyPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast message",),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            flutterToast();
          },
          child: Text('Toast'),
        ),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: "This is Center Short Toast",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
}