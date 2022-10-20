import 'package:flutter/material.dart';
import 'package:login_ui/01_loginUI/login.dart';
import 'package:login_ui/02_loginUI/login.dart';
import 'package:login_ui/homescreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/01': (context) => const LoginUI(),
        '/02': (context) => const ManagerLogin(),
      },
    );
  }
}





