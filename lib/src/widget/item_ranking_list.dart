import 'package:animate_do/animate_do.dart';
import 'package:ejemplo_social_app/src/widget/crear_circulo.dart';
import 'package:flutter/material.dart';

class ItemRanking extends StatelessWidget {
  final int puesto;
  final String imagen;
  final bool usuario;
  final String nombre;
  final int puntos;
  const ItemRanking(
      {Key key,
      this.puesto,
      this.imagen,
      this.usuario = false,
      this.nombre = '',
      this.puntos = 0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ZoomIn(
          child: Container(
          width: double.infinity,
          height: 70,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    '$puesto',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff230471)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CrearCirculo(
                    color: (usuario) ? Color(0xff812DA3) : Colors.white,
                    size: 45,
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
                  SizedBox(
                    width: 10,
                  ),
                  Text(nombre,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff230471))),
                  Text((usuario) ? '   (You)' : '',
                      style: TextStyle(fontSize: 20, color: Colors.grey)),
                  Spacer(),
                  Text('$puntos Pts',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff230471).withOpacity(0.6)))
                ],
              ),
            ),
          )),
    );
  }
}
