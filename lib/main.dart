import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scaffold Messenger",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Messenger'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the Screen Page'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=>SecondPage(),
            ),);
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Messenger'),
      ),
      body: Center(
        child: Text('Hello world'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Like a new snack bar!'),
            duration: Duration(seconds: 5),
            action: SnackBarAction(
              label: "OK",
              onPressed: () {  },
            ),

          ));
        },
      ),

    );
  }
}

