import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/overtime/overtime.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.light,
        primaryColor: Colors.black,
      ),
      // home: const Login(),
      // home: const IzinPage(),
      home: const OvertimeScreen(),
    );
  }
}
