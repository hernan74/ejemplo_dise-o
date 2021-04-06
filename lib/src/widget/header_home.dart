import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.0,
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
    crearFiguraContenedorClima(canvas, size);
    crearFiguraAmarillo(canvas, size);
    crearFiguraRosaInferior(canvas, size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  void crearColorFondo(Canvas canvas, Size size) {
    final Rect rect =
        new Rect.fromCircle(center: Offset(0.0, 150.0), radius: 180);
    //Gradiente rosado
    final Gradient gradiente = new LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
        colors: [
          Color(0xffC03576),
          Color(0xffC33676),
          Color(0xffDA426C),
          Color(0xffF55160),
          Color(0xffF75160),
        ]);
    final paint = new Paint()..shader = gradiente.createShader(rect);

    //Propiedades
    paint.color = Color(0xffF2539B);
    paint.style = PaintingStyle.fill; //stroke  fill
    paint.strokeWidth = 5;

    final path = new Path();

    //Dibujo
    //
    path.moveTo(0, size.height * 0.85);
    //Dibujo Rosado
    path.quadraticBezierTo(size.width * 0.3, size.height * 0.70,
        size.width * 0.55, size.height * 0.85);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.98,
        size.width * 0.80, size.height * 0.99);
    path.quadraticBezierTo(
        size.width * 0.87, size.height, size.width, size.height * 0.95);

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  void crearFiguraRosaInferior(Canvas canvas, Size size) {
    final Rect rect =
        new Rect.fromCircle(center: Offset(0.0, 150.0), radius: 180);
    //Gradiente rosado
    final Gradient gradiente = new LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Color(0xffEE4755),
          Color(0xffF759BF),
        ]);
    final paint = new Paint()..shader = gradiente.createShader(rect);
    //Propiedades
    paint.color = Color(0xffF2539B);
    paint.style = PaintingStyle.fill; //stroke  fill
    paint.strokeWidth = 5;

    final path = new Path();

    //Dibujo
    //
    path.moveTo(0, size.height * 0.85);
    //Dibujo Rosado
    path.quadraticBezierTo(size.width * 0.3, size.height * 0.70,
        size.width * 0.55, size.height * 0.85);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.98,
        size.width * 0.80, size.height * 0.99);
    path.quadraticBezierTo(
        size.width * 0.87, size.height, size.width * 0.95, size.height * 0.965);
    path.quadraticBezierTo(
        size.width * 0.87, size.height, size.width * 0.55, size.height * 0.6);
    path.quadraticBezierTo(
        size.width * 0.35, size.height * 0.40, 0, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  void crearFiguraAmarillo(Canvas canvas, Size size) {
    final Rect rect =
        new Rect.fromCircle(center: Offset(0.0, 150.0), radius: 180);
    //Gradiente rosado
    final Gradient gradiente = new LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.yellow,
          Color(0xffFCBD31),
          Color(0xffF79961).withOpacity(0.7),
        ]);
    final paint = new Paint()..shader = gradiente.createShader(rect);
    //Propiedades
    paint.color = Color(0xffFDBE2F);
    paint.style = PaintingStyle.fill; //stroke  fill
    paint.strokeWidth = 4;

    final path = new Path();

    //Dibujo
    //
    path.moveTo(0, size.height * 0.50);
    //Dibujo Rosado
    path.quadraticBezierTo(size.width * 0.35, size.height * 0.426,
        size.width * 0.50, size.height * 0.559);
    path.quadraticBezierTo(
        size.width * 0.35, size.height * 0.2, 0, size.height * 0.2);

    canvas.drawPath(path, paint);
  }

  void crearFiguraContenedorClima(Canvas canvas, Size size) {
    final Rect rect =
        new Rect.fromCircle(center: Offset(0.0, 150.0), radius: 180);
    //Gradiente rosado
    final Gradient gradiente = new LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomLeft,
        colors: [
          Colors.yellow,
          Color(0xffFC7270),
          Color(0xffFC5B79),
          Color(0xffFC4781),
          Color(0xffFB4482),
        ]);
    final paint = new Paint()..shader = gradiente.createShader(rect);
    //Propiedades
    paint.color = Color(0xffFDBE2F);
    paint.style = PaintingStyle.fill; //stroke  fill
    paint.strokeWidth = 4;

    final path = new Path();

    //Dibujo
    //
    path.moveTo(size.width * 0.5, size.height * 0.6);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.5, size.width, size.height * 0.1);
    path.lineTo(size.width, size.height * 0.6);
    path.quadraticBezierTo(size.width * 0.9, size.height * 0.9,
        size.width * 0.8, size.height * 0.9);
    canvas.drawPath(path, paint);
  }
}
