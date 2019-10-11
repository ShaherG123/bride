import 'package:flare_flutter/flare_actor.dart';
import 'package:bride/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bride/Constants.dart' as R;

class SplashScreen extends StatefulWidget {
  static const id = 'SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _goToHomepage(BuildContext context) async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushNamedAndRemoveUntil(context, LoginPage.id, (r) => false);
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    WidgetsBinding.instance.addPostFrameCallback((_) => _goToHomepage(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.pink,
                  Colors.pink[300],
                  Colors.pink[50],
                ],
                stops: [0, 0.5, 1],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 400,
              width: 400,
              child: FlareActor(
                'assets/emoji1.flr',
                shouldClip: false,
                snapToEnd: true,
                sizeFromArtboard: true,
                alignment: Alignment.center,
                fit: BoxFit.contain,
                animation: "Animations",
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 100.0 + MediaQuery.of(context).size.height / 2,
            child: Hero(
              tag: 'appName',
              child: Text(
                'bride',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 60,
                  fontFamily: R.instagramFontFamily,
                  color: Colors.white,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
