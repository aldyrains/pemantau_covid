import 'package:flutter/material.dart';
import 'package:pemantau_covid/constant.dart';
import 'package:pemantau_covid/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pemantau Covid',
        theme: ThemeData(
            scaffoldBackgroundColor: kBackgroundColor,
            fontFamily: "Poppins",
            textTheme: TextTheme(
              body1: TextStyle(color: kBodyTextColor),
            )),
        home: HomeScreen());
  }
}
