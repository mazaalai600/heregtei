import 'package:flutter/material.dart';
import 'package:flutter_hicheel/basic_screen.dart';
import 'package:flutter_hicheel/deep_tree.dart';
import 'package:flutter_hicheel/e_commerce_screen.dart';
import 'package:flutter_hicheel/flex_screen.dart';
import 'package:flutter_hicheel/login_screen.dart';
import 'package:flutter_hicheel/profile_screen.dart';
import 'package:flutter_hicheel/stopwatch.dart';
// import 'package:flutter_hicheel/basic_screen.dart';
// import 'package:flutter_hicheel/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasicScreen(),
      // routes: {
      //   '/':(context) => const LoginScreen(),
      //   LoginScreen.route:(context) => const LoginScreen(),
      //   StopWatch.route: (context) => const StopWatch(),
      // },
      // initialRoute: '/',
    );
  }
}
