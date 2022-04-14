import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack bar demo',
      home: MyPage(),
      theme: ThemeData(
        primarySwatch: Colors.red,
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
        title: Text('Snack bar'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: MySnapBar(),
    );
  }
}

class MySnapBar extends StatelessWidget {
  const MySnapBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
       child: ElevatedButton(
       child: Text('Show me',
          style: TextStyle(
          color: Colors.white,
          ),
        ),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Snapbar',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.orange
              ),),
            duration: Duration(milliseconds: 3000),
            backgroundColor: Colors.teal,
            action: SnackBarAction(
              onPressed: () {
                print('snapBar is clicked');
              }, label: 'Haha',
            ),
          )
          );
        }),
    );
  }
}


