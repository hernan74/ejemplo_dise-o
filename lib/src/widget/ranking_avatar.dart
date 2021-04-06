import 'package:animate_do/animate_do.dart';
import 'package:ejemplo_social_app/src/widget/crear_circulo.dart';
import 'package:flutter/material.dart';

class RankingAvatar extends StatelessWidget {
  final String nombre;
  final int puntos;
  final double ancho;
  final double alto;
  final String puesto;
  final String imagen;
  final double sizeImagen;

  const RankingAvatar(
      {Key key,
      this.nombre,
      this.puntos,
      this.ancho = 110,
      this.alto = 170,
      this.puesto,
      this.imagen,
      this.sizeImagen = 90})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
          child: Container(
        width: ancho,
        height: alto,
        child: Column(
          children: <Widget>[
            Container(
              width: ancho - 5,
              height: alto - 40,
              child: _ImagenRanking(
                puesto: puesto,
                imagen: imagen,
                sizeImagen: sizeImagen,
              ),
            ),
            Text(
              nombre,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text('$puntos Pts',
                style: TextStyle(color: Colors.white, fontSize: 15))
          ],
        ),
      ),
    );
  }
}

class _ImagenRanking extends StatelessWidget {
  final String puesto;
  final String imagen;
  final double sizeImagen;

  const _ImagenRanking({Key key, this.puesto, this.imagen, this.sizeImagen})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CrearCirculo(
          color: Colors.white,
          size: sizeImagen,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/$imagen.jpg'),
              ),
            ),
          ),
        ),
        Container(
            width: 40,
            height: 40,
            child: Image(
              image: AssetImage('assets/$puesto.png'),
              fit: BoxFit.cover,
            )),
      ],
    );
  }
}
