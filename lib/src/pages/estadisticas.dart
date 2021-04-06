import 'package:animate_do/animate_do.dart';
import 'package:ejemplo_social_app/src/widget/header_estadisticas.dart';
import 'package:ejemplo_social_app/src/widget/item_ranking_list.dart';
import 'package:ejemplo_social_app/src/widget/ranking_avatar.dart';
import 'package:ejemplo_social_app/src/widget/toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EstadisticasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 400,
              child: _RankingList(),
            ),
            _Header()
          ],
        ),
      ),
    );
  }
}

//Hader
class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HeaderEstadisticas(),
        Positioned(
          top: 60,
          left: 8,
          child: ZoomIn(
            child: SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 100,
                child: _AppBar()),
          ),
        ),
        Positioned(
          top: 115,
          left: 8,
          child: ZoomIn(
                      child: CustomToggleButtons(
              elementos: [
                ToggleModel(index: 0, titulo: 'Today'),
                ToggleModel(index: 1, titulo: 'Month'),
                ToggleModel(index: 2, titulo: 'All time')
              ],
            ),
          ),
        ),
        Positioned(top: 170, child: _RankingPanelImagen())
      ],
    );
  }
}

class _AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          child: Text(
            'Winners',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Positioned(
            left: 130,
            top: 10,
            child: Text('Friends',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ))),
        Positioned(
            left: 185,
            top: 10,
            child: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.white,
            )),
        Positioned(
          right: 40,
          top: 10,
          child: FaIcon(
            FontAwesomeIcons.userPlus,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 0,
          top: 10,
          child: FaIcon(
            FontAwesomeIcons.search,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class _RankingPanelImagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          //Shadow
          Positioned(
              left: 10,
              top: 0,
              child: _CrearShadowImageRanking(
                sizeShadow: 90,
              )),
          Positioned(
              top: 0,
              child: _CrearShadowImageRanking(
                sizeShadow: 110,
              )),
          Positioned(
              top: 8,
              right: 20,
              child: _CrearShadowImageRanking(
                sizeShadow: 80,
              )),

          //Avatar
          Positioned(
            left: 0,
            child: RankingAvatar(
              nombre: 'Tony Stark',
              puntos: 6500,
              puesto: 'segundo',
              imagen: 'tonyStark',
              sizeImagen: 70,
            ),
          ),
          RankingAvatar(
            nombre: 'Peter Parker',
            puntos: 7400,
            puesto: 'primer',
            imagen: 'peterParker',
            sizeImagen: 90,
          ),
          Positioned(
            right: 0,
            child: RankingAvatar(
              nombre: 'John Carter',
              puntos: 5800,
              puesto: 'tercero',
              imagen: 'johnCarter',
              sizeImagen: 60,
            ),
          )
        ],
      ),
    );
  }
}

class _CrearShadowImageRanking extends StatelessWidget {
  final double sizeShadow;

  const _CrearShadowImageRanking({Key key, this.sizeShadow}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeShadow,
      height: sizeShadow,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(200), boxShadow: [
        BoxShadow(
            color: Color(0xff05678B),
            blurRadius: 30.0,
            spreadRadius: 0,
            offset: Offset(4, 17))
      ]),
    );
  }
}

//Lista ranking

class _RankingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 10,
      height: 400,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ItemRanking(
            puesto: 1,
            imagen: 'peterParker',
            usuario: true,
            nombre: 'Peter Parker',
            puntos: 7400,
          ),
          ItemRanking(
            puesto: 2,
            imagen: 'tonyStark',
            nombre: 'Tony Stark',
            puntos: 6500,
          ),
          ItemRanking(
            puesto: 3,
            imagen: 'johnCarter',
            nombre: 'John Carter',
            puntos: 5800,
          ),
          ItemRanking(
            puesto: 4,
            imagen: 'peterParker',
            nombre: 'Peter Parker',
            puntos: 5000,
          ),
          ItemRanking(
            puesto: 5,
            imagen: 'tonyStark',
            nombre: 'Tony Stark',
            puntos: 4500,
          ),
          ItemRanking(
            puesto: 6,
            imagen: 'johnCarter',
            nombre: 'John Carter',
            puntos: 3800,
          ),
        ],
      ),
    );
  }
}
