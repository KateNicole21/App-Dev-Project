import 'package:flutter/material.dart';
import 'package:homeservice/appointment.dart';
import 'package:homeservice/homepage.dart';
import 'package:homeservice/intropage.dart';
import 'package:homeservice/loginpage.dart';
import 'package:homeservice/signuppage.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppointmentPage(),
      routes: {
        '/homepages':(context) => const HomePage(),
        '/loginpage': (context) => const LoginPage(),
        '/signuppages': (context) => const SignUpPages(),
      },
    );
  }
}
