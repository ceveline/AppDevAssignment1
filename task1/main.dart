import 'LoginScreen.dart';
import 'MainScreen.dart';
import 'package:flutter/material.dart';

// this example will be used to demo the namedRouting

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Task',
      theme: ThemeData(
          primarySwatch: Colors.lightGreen
      ),
      //define all the routes you might use in this app
      routes: {
        '/': (context) => LoginScreen(),
        '/Second': (context) => MainScreen()
      },
    );
  }
}
