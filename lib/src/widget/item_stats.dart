import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ItemHome extends StatelessWidget {
  final Color colorFondo;
  final double ancho;
  final double alto;
  final String titulo;
  final String imagen;
  const ItemHome({
    Key key,
    this.colorFondo = Colors.white,
    this.ancho = 180,
    this.alto = 130,
    this.titulo = '',
    this.imagen,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: JelloIn(
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width / 2 - 26,
            height: alto,
            decoration: BoxDecoration(
                color: colorFondo, borderRadius: BorderRadius.circular(30)),
            child: Stack(
              children: <Widget>[
                Text(
                  titulo,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                if (imagen != null)
                  Positioned(
                    bottom: -10,
                    right: -30,
                    child: Container(
                        width: 100,
                        height: 100,
                        child: Image(
                          image: AssetImage('assets/$imagen'),
                          fit: BoxFit.cover,
                        )),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
