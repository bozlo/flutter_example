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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
            child: Text('Go to the Screen Page'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>SecondPage(),
              ),);
            },
            ),
            SizedBox(height: 20,),
            TextButton(onLongPress: () {
              print("long press");
            }, child: Text('Text Button'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
            ), onPressed: () {
                print("pressed");
              },
            ),
            ElevatedButton(onPressed: (){}, child: Text('Elevated Button'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 10.0,
            ),),
            ButtonBar(
              alignment: MainAxisAlignment.center,
                buttonPadding: EdgeInsets.all(20.0),
                children: [
              OutlinedButton(onPressed: null, child: Text('OutlinedButton'),
              style: OutlinedButton.styleFrom(
                onSurface: Colors.green,
                primary: Colors.green,
                side: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                )
              ),),
              TextButton.icon(onPressed: (){}, icon: Icon(Icons.home, size: 30.0, color: Colors.black87,), label: Text('Go to Home'),
              style: TextButton.styleFrom(
                primary: Colors.red,
                backgroundColor: Colors.yellow,
              ),),
            ]),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Like a new snack bar!'),
            duration: Duration(seconds: 5),
            action: SnackBarAction(
              label: "Undo",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ThirdPage(),
                ));
              },
            ),
          ));
        },
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
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text('Add to favorite!!!'),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ThridPage를 벗어나면 context가 의미가 없어져서 snackbar가 바로 없어진다.
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('want to undo Favorite?',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.redAccent,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 5),
                          action: SnackBarAction(
                              label: 'Cancel', onPressed: () {
                            Navigator.pop(context);
                          }),
                          content: Text('It is undo'),));
                      },
                      child: Text('Cancel'))
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}