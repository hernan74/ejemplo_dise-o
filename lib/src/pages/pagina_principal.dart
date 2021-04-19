import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:ejemplo_social_app/src/widget/header_home.dart';
import 'package:ejemplo_social_app/src/widget/item_stats.dart';

class PaginaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: [
            CustomHeader(),
            Positioned(
                bottom: 110,
                left: 25,
                child: FlipInX(
                  duration: Duration(milliseconds: 1200),
                  child: Text(
                    'Good',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Positioned(
                bottom: 80,
                left: 25,
                child: FlipInX(
                  duration: Duration(milliseconds: 1600),
                  child: Text(
                    'Sanwik Pachino',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Positioned(
                right: 40,
                bottom: 120,
                child: SlideInRight(
                  child: FaIcon(
                    FontAwesomeIcons.cloud,
                    size: 45,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                right: 50,
                bottom: 100,
                child: SlideInRight(
                  child: Text(
                    '21 C',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Positioned(
                right: 47,
                bottom: 80,
                child: SlideInUp(
                  from: 50,
                  child: Text(
                    'Cloufy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                )),
            Positioned(
                left: 10,
                bottom: 0,
                child: Text(
                  'Start a new journey',
                  style: TextStyle(
                      color: Color(0xff616A75),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
        Expanded(child: _HomeItems())
      ],
    );
  }
}

class _HomeItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListView(
        children: [
          Row(mainAxisSize: MainAxisSize.min, children: [
            ItemHome(
              titulo: 'Walking',
              imagen: 'walk.png',
            ),
            ItemHome(
              titulo: 'Cycling',
              imagen: 'cycling.png',
            )
          ]),
          Row(mainAxisSize: MainAxisSize.min, children: [
            ItemHome(
              titulo: 'Driving',
              imagen: 'car.png',
            ),
            ItemHome(
              titulo: 'Train',
              imagen: 'train.png',
            )
          ]),
          Row(mainAxisSize: MainAxisSize.min, children: [
            ItemHome(
              titulo: 'Hiking',
              imagen: 'adventurer.png',
            ),
            ItemHome(
              titulo: 'Flight',
              imagen: 'aeroplane.png',
            )
          ]),
        ],
      ),
    );
  }
}
