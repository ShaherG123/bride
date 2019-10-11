import 'package:flutter/material.dart';
import 'package:bride/Constants.dart' as R;

const CURVE_HEIGHT = 160.0;
const AVATAR_RADIUS = CURVE_HEIGHT * 0.28;
const AVATAR_DIAMETER = AVATAR_RADIUS * 2;

class Home extends StatelessWidget {
  static const id = 'Home';

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
          child: Container(
            child: new Column(children: <Widget>[
              Container(
                width: width,
                padding: EdgeInsets.only(top: height / 10),
                child: Text(
                  "HOME",
                  style: TextStyle(
                      color: Colors.pink[700],
                      fontWeight: FontWeight.normal,
                      fontSize: 40,
                      fontFamily: R.amaranthFontFamily),
                  textAlign: TextAlign.center,
                ),
              ),
              new Container(
                child: CustomPaint(
                  painter: DrawCircle(),
                ),
              )
            ]),
          ),
          painter: CurvePainter1(),
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

//////////////////////////////////////////////////////////////////////
class DrawCircle extends CustomPainter {
  Paint _paint;

  DrawCircle() {
    _paint = Paint()
      ..color = Colors.pink[200]
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(0.0, 300), 30.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

