// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'screen/start.dart';
import 'screen/login.dart';
import 'screen/signup.dart';
import 'screen/home.dart';
import 'screen/location.dart';
import 'screen/mypage.dart';
import 'screen/edit_profile.dart';
import 'screen/add_item.dart';
import 'screen/detail.dart';
import 'screen/chat.dart';

class CarrotApp extends StatelessWidget {
  CarrotApp({Key? key}) : super(key: key);

// theme color
  MaterialColor mainColor = const MaterialColor(
    0xFFFF7E36,
    <int, Color>{
      50: Color(0xFFFF7E36),
      100: Color(0xFFFF7E36),
      200: Color(0xFFFF7E36),
      300: Color(0xFFFF7E36),
      400: Color(0xFFFF7E36),
      500: Color(0xFFFF7E36),
      600: Color(0xFFFF7E36),
      700: Color(0xFFFF7E36),
      800: Color(0xFFFF7E36),
      900: Color(0xFFFF7E36),
    },
  );

// named routes
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carrot',
      theme: ThemeData(
        fontFamily: 'Inter',
        primarySwatch: mainColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const StartPage(),
        '/login': (BuildContext context) => const LoginPage(),
        '/signup': (BuildContext context) => const SignUpPage(),
        '/home': (BuildContext context) => const HomePage(),
        '/location': (BuildContext context) => const LocationPage(),
        '/mypage': (BuildContext context) => const MyPage(),
        '/editprofile': (BuildContext context) => const EditProfilePage(),
        '/additem': (BuildContext context) => const AddItemPage(),
        '/detail': (BuildContext context) => const DetailPage(),
        '/chat': (BuildContext context) => const ChatPage(),
      },
    );
  }
}
