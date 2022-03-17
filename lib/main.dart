import 'package:first_projrct/pages/home_page.dart';
import 'package:first_projrct/pages/login_page.dart';
import 'package:first_projrct/pages/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SignupPage();
  }
}