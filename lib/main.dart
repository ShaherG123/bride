import 'package:bride/login.dart';
import 'package:flutter/material.dart';
import 'package:bride/SplashScreen.dart';

import 'login.dart';

main() {
  runApp(
    MyApp()
     );
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.pink,
        
      ),
      routes: {
        LoginPage.id: (context) => LoginPage(),
        SplashScreen.id: (context) => SplashScreen(),
      },
      // initialRoute: SplashScreen.id,
      home: SplashScreen(),
    );
  }
}
