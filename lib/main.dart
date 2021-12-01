import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign In And Sign Up',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }

  
 
}

