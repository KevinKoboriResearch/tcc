import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'package:tcc/modules/app_shell/app_shell.dart';

import 'modules/app_shell/app_shell.dart';
import "modules/login/login_page.dart";
import 'modules/revenues/revenues_page.dart';
// import "package:flutter_neumorphic/flutter_neumorphic.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    //
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    //   statusBarBrightness: Brightness.dark,
    //   statusBarIconBrightness: Brightness.dark,
    //   systemNavigationBarIconBrightness: Brightness.light,
    // ));
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.pink,
    //   statusBarBrightness: Brightness.light,
    //   statusBarIconBrightness: Brightness.light,
    //   systemNavigationBarIconBrightness: Brightness.light,
    //   // systemNavigationBarColor: Colors.green,
    // ));
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: Colors.pink[300], // status bar color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Yummy",
      theme: ThemeData(
        fontFamily: "Lato",
        brightness: Brightness.dark,
        canvasColor: Colors.white,
        // splashColor: Colors.transparent,
        // hoverColor: Colors.transparent,
        // hintColor: Colors.transparent,
        // focusColor: Colors.transparent,
        // cardColor: Colors.white,
        // backgroundColor: Colors.white,
        // buttonColor: Colors.white,

        // primarySwatch: Colors.blue,
        // indicatorColor: Colors.white,
        // errorColor: Colors.white,
        // cursorColor: Colors.white,
        // accentColor: Colors.white,
        // shadowColor: Colors.white,
        // dividerColor: Colors.white,
        // primaryColor: Colors.white,
        // disabledColor: Colors.white,
        // highlightColor: Colors.white,
      ),
      // home: LoginPage(),
      // home: RevenuesPage(),
      home: AppShell(),
    );
  }
}
