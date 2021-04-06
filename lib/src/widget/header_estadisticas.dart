import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class HeaderEstadisticas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      child: CustomPaint(
        painter: _HeaderPaiter(),
      ),
    );
  }
}

class _HeaderPaiter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    crearColorFondo(canvas, size);
    crearColorAzul(canvas, size);
    crearColorPurpura(canvas, size);
    crearColorSuperiorDerecho(canvas, size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  void crearColorFondo(Canvas canvas, Size size) {
    final paint = new Paint();

    //Propiedades
    paint.color = Color(0xffE5D6EC).withOpacity(0.5);
    paint.style = PaintingStyle.fill; //stroke  fill
    paint.strokeWidth = 5;

    final path = new Path();

    //Dibujo
    //
    path.moveTo(0, size.height * 0.87);
    //Dibujo Rosado
    path.quadraticBezierTo(
        size.width * 0.32, size.height, size.width * 0.65, size.height * 0.92);
    path.quadraticBezierTo(
        size.width * 0.78, size.height * 0.87, size.width, size.height * 0.95);

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  void crearColorPurpura(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader =
          ui.Gradient.linear(Offset(size.width, size.height), Offset(0, 0), [
        Color(0xff78249E),
        Color(0xff3C1581),
      ], [
        0.1,
        0.9
      ]);
    //Propiedades
    paint.color = Color(0xff832EA4);
    paint.style = PaintingStyle.fill; //stroke  fill
    paint.strokeWidth = 5;

    final path = new Path();

    //Dibujo
    //
    path.moveTo(0, size.height * 0.85);
    //Dibujo Rosado
    path.quadraticBezierTo(size.width * 0.32, size.height * 0.98,
        size.width * 0.65, size.height * 0.9);
    path.quadraticBezierTo(
        size.width * 0.78, size.height * 0.86, size.width, size.height * 0.93);

    path.lineTo(size.width, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 0.6, size.height * 0.90, 0, size.height * 0.70);

    canvas.drawPath(path, paint);
  }

  void crearColorAzul(Canvas canvas, Size size) {
    final paint = new Paint();

    //Propiedades
    paint.color = Color(0xff220570);
    paint.style = PaintingStyle.fill; //stroke  fill
    paint.strokeWidth = 5;

    final path = new Path();

    //Dibujo
    //
    path.moveTo(0, size.height * 0.7);
    //Dibujo Rosado
    path.quadraticBezierTo(
        size.width * 0.6, size.height * 0.90, size.width, size.height * 0.80);
    path.lineTo(size.width, size.height * 0.23);
    path.quadraticBezierTo(size.width * 0.88, size.height * 0.12,
        size.width * 0.7, size.height * 0.12);
    path.quadraticBezierTo(
        size.width * 0.55, size.height * 0.13, size.width * 0.4, 0);

    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  void crearColorSuperiorDerecho(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = ui.Gradient.linear(Offset(size.width, size.height),
          Offset(0, 0), [Color(0xff240774), Colors.purple], [0.6, 1.0]);
    //Propiedades
    paint.color = Colors.red;
    paint.style = PaintingStyle.fill; //stroke  fill
    paint.strokeWidth = 3;

    final path = new Path();

    //Dibujo
    //
    path.moveTo(size.width * 0.4, 0);
    path.quadraticBezierTo(size.width * 0.55, size.height * 0.134,
        size.width * 0.7, size.height * 0.124);
    path.quadraticBezierTo(
        size.width * 0.88, size.height * 0.12, size.width, size.height * 0.234);
    path.lineTo(size.width, 0);
    path.lineTo(size.width * 0.4, 0);
    canvas.drawPath(path, paint);
  }
}
