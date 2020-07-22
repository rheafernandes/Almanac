import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      body: SafeArea(
        child: Stack(
          children: [
            ShapeGenerator(
              width: 100.0,
              height: 100.0,
              color: Colors.teal,
              shape: BoxShape.circle,
              top: -50,
              right: 0,
            ),
            ShapeGenerator(
              width: 250.0,
              height: 250.0,
              color: Colors.teal[300],
              shape: BoxShape.circle,
              top: -125,
            ),
            ShapeGenerator(
              width: 30.0,
              height: 30.0,
              color: Colors.teal,
              shape: BoxShape.circle,
              top: 45,
              left: 135,
            ),
            ShapeGenerator(
              width: 20.0,
              height: 20.0,
              color: Colors.teal,
              shape: BoxShape.circle,
              top: 50,
              left: 90,
            ),
            ShapeGenerator(
              width: 100.0,
              height: 120.0,
              color: Colors.teal[300],
              shape: BoxShape.rectangle,
              bottom: 0,
              right: 30,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
            ShapeGenerator(
              width: 20.0,
              height: 20.0,
              color: Colors.teal,
              shape: BoxShape.circle,
              bottom: 35,
              right: 85,
            ),
            ShapeGenerator(
              width: 15.0,
              height: 15.0,
              color: Colors.teal,
              shape: BoxShape.circle,
              bottom: 37,
              right: 55,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  loginButton('Continue with Google', () => print('Google')),
                  loginButton('Continue with Apple', () => print('Apple')),
                  loginButton('Explore', () => print('Explore'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  RaisedButton loginButton(String label, Function function) {
    return RaisedButton(
      onPressed: function,
      child: SizedBox(
          width: 200,
          child: Text(
            label,
            textAlign: TextAlign.center,
          )),
      color: Colors.teal,
      textColor: Colors.white70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
    );
  }
}

class ShapeGenerator extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;
  final Color color;
  final BoxShape shape;
  final double top;
  final double bottom;
  final double left;
  final double right;

  const ShapeGenerator(
      {Key key,
      this.width,
      this.height,
      this.borderRadius,
      this.color,
      this.shape,
      this.top,
      this.bottom,
      this.left,
      this.right})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        decoration: BoxDecoration(
            color: color, shape: shape, borderRadius: borderRadius),
        width: width,
        height: height,
      ),
    );
  }
}
