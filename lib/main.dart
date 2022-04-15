import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
int counter = 0;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have pushed the button this many times'),
              Text(
                  '$counter',
              style: Theme.of(context).textTheme.displayLarge
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    child: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        counter += 1;
                        print(counter);
                      });
                    },
                  ),
                  FloatingActionButton(onPressed: ()
                    {
                      setState(() {
                      counter--;
                    });
                    }, child: Icon(Icons.remove)
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
