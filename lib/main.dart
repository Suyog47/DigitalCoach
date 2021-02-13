import 'package:digitalcoach/Home.dart';
import 'package:digitalcoach/approach.dart';
import 'package:digitalcoach/login.dart';
import 'package:digitalcoach/profile.dart';
import 'package:digitalcoach/sign-up.dart';
import 'package:digitalcoach/start-up.dart';
import 'package:digitalcoach/start-up2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute: "/approach",
      routes: {
        "/start-up" : (context) => StartUp(),
        "/start-up2" : (context) => StartUp2(),
        "/home" : (context) => Home(),
        "/sign-up" : (context) => SignUp(),
        "/log-in" : (context) => Login(),
        "/profile" : (context) => Profile(),
        "/approach" : (context) => Approach()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
