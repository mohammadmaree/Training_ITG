import 'package:first_projrct/pages/cards_page.dart';
import 'package:first_projrct/pages/carousel_page.dart';
import 'package:first_projrct/pages/home_page.dart';
import 'package:first_projrct/pages/login_page.dart';
import 'package:first_projrct/pages/profile_page.dart';
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
      routes: {
        LoginPage.routeName : (ctx) => LoginPage(),
        SignupPage.routeName : (ctx) => SignupPage(),
      },
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CarouselPage();
  }
}
