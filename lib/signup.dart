import 'package:bride/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bride/Constants.dart' as R;

const CURVE_HEIGHT = 160.0;
const AVATAR_RADIUS = CURVE_HEIGHT * 0.28;
const AVATAR_DIAMETER = AVATAR_RADIUS * 2;

class signup extends StatelessWidget {
  double width;
  double height;
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    width = (MediaQuery.of(context).size.width);
    height = (MediaQuery.of(context).size.height);

    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomPaint(
        painter: CurvePainter5(),
        child: CustomPaint(
          painter: CurvePainter4(),
          child: CustomPaint(
            child: Container(
              width: width,
              child: new Column(children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: height / 10),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.pink[700],
                      fontWeight: FontWeight.normal,
                      fontSize: 40,
                      fontFamily: R.amaranthFontFamily

                    ),

                    // textAlign: TextAlign.center,
                  ),
                ),
                new Container(
                    padding: EdgeInsets.only(top: height / 12),
                    width: width / 1.2,
                    child: new TextField(
                      autocorrect: true,
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            color: Colors.pink[900],
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 0, color: Colors.pink[900]),
                        ),
                        prefixIcon: Icon(
                          Icons.account_circle,
                          color: Colors.pink[900],
                        ),
                        labelText: 'Name',
                        labelStyle: TextStyle(
                          color: Colors.pink[900],
                        ),
                      ),
                    )),
                new Container(
                    padding: EdgeInsets.only(top: height / 30),
                    width: width / 1.2,
                    child: new TextField(
                      autocorrect: true,
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            color: Colors.pink[900],
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 0, color: Colors.pink[900]),
                        ),
                        prefixIcon: Icon(
                          Icons.phone_iphone,
                          color: Colors.pink[900],
                        ),
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(
                          color: Colors.pink[900],
                        ),
                      ),
                    )),
                new Container(
                    padding: EdgeInsets.only(top: height / 30),
                    width: width / 1.2,
                    child: new TextField(
                      autocorrect: true,
                      autofocus: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: new InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            color: Colors.pink[900],
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 0, color: Colors.pink[900]),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.pink[900],
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.pink[900],
                        ),
                        suffixIcon: IconButton(
                          // onPressed: () => _controller.clear(),
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.pink[900],
                          ),
                          onPressed: () {
                            passwordVisible = !passwordVisible;
                          },
                        ),
                      ),
                    )),
                new Container(
                    padding: EdgeInsets.only(top: height / 30),
                    width: width / 1.2,
                    child: new TextField(
                      autocorrect: true,
                      autofocus: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: new InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            color: Colors.pink[900],
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 0, color: Colors.pink[900]),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.pink[900],
                        ),
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(
                          color: Colors.pink[900],
                        ),
                        suffixIcon: IconButton(
                          // onPressed: () => _controller.clear(),
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.pink[900],
                          ),
                          onPressed: () {
                            passwordVisible = !passwordVisible;
                          },
                        ),
                      ),
                    )),
                new Container(
                    padding: EdgeInsets.only(top: height / 7),
                    child: ButtonTheme(
                      minWidth: width / 1.8,
                      height: 60,
                      child: RaisedButton(
                        color: Colors.pink[700],
                        onPressed: () {
                           Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                        },
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: const Text('Register',
                            style:
                                TextStyle(fontSize: 15, color: Colors.white)),
                      ),
                    )),
              ]),
            ),
            painter: CurvePainter1(),
          ),
        ),
      ),
    );
  }
}

/////////////////////////////////////////////////////////////////
class CurvePainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.grey[200];
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.1);

    path.quadraticBezierTo(size.width * 0.1, size.height * 0.2,
        size.width * 0.3, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.2,
        size.width * 1.0, size.height * 0.2);

    path.lineTo(size.width, size.height - 800);

    path.lineTo(0, size.height - 800);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

/////////////////////////////////////////////////////////////////
class CurvePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.pink[400];
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.3);

    path.quadraticBezierTo(size.width * 0.1, size.height * 0.4,
        size.width * 0.3, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.4,
        size.width * 1.0, size.height * 0.4);

    path.lineTo(size.width, size.height - 800);

    path.lineTo(0, size.height - 800);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

/////////////////////////////////////////////////////////////////
class CurvePainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.pink[300];
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.5);

    path.quadraticBezierTo(size.width * 0.1, size.height * 0.6,
        size.width * 0.3, size.height * 0.6);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.6,
        size.width * 1.0, size.height * 0.6);

    path.lineTo(size.width, size.height - 800);

    path.lineTo(0, size.height - 800);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

/////////////////////////////////////////////////////////////////
class CurvePainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.pink[200];
    paint.style = PaintingStyle.fill;
    var path = Path();

    path.moveTo(0, size.height * 0.7);

    path.quadraticBezierTo(size.width * 0.1, size.height * 0.8,
        size.width * 0.3, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.8,
        size.width * 1.0, size.height * 0.8);

    path.lineTo(size.width, size.height - 800);

    path.lineTo(0, size.height - 800);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

/////////////////////////////////////////////////////////////////
class CurvePainter5 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.pink[100];
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.9);

    path.quadraticBezierTo(
        size.width * 0.1, size.height * 01, size.width * 0.3, size.height * 01);
    path.quadraticBezierTo(
        size.width * 0.2, size.height * 01, size.width * 1.0, size.height * 01);

    path.lineTo(size.width, size.height - 800);

    path.lineTo(0, size.height - 800);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
