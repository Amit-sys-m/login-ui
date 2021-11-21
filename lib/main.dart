import 'package:eduappp/pages/mainpage.dart';
import 'package:eduappp/pages/otp.dart';
import 'package:eduappp/pages/register.dart';
import 'package:eduappp/pages/sigin.dart';
import 'package:eduappp/pages/verify.dart';
import 'package:eduappp/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.mainroute,
      routes: {
        MyRoutes.mainroute: (context) => const MainPage(),
        MyRoutes.signinroute: (context) => const SigninPage(),
        MyRoutes.registerroute: (context) => const RegisterPage(),
        MyRoutes.verifyroute: (context) => const VerifyPage(),
        MyRoutes.otproute: (context) => const OtpPage(),
      },
    );
  }
}
