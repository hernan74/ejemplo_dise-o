import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class BottonNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final seleccion = Provider.of<BottonNavigationProvider>(context);

    return BottomNavigationBar(
      currentIndex: seleccion.ventanaSeleccionada,
      onTap: (i) {
        seleccion.ventanaSeleccionada = i;
      },
      selectedItemColor: Color(0xffFB6072),
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      iconSize: 30,
      selectedFontSize: 18,
      items: [
        BottomNavigationBarItem(
            icon: Container(
              child: Icon(
                Icons.home,
              ),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.history,
            ),
            label: 'Stats'),
        BottomNavigationBarItem(
            icon: Container(
              width: 30,
              height: 30,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image(
                  image: AssetImage('assets/avatar.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            label: 'Stats'),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.chartBar), label: 'Rewards'),
        BottomNavigationBarItem(
            icon: FaIcon(Icons.notifications_none_outlined), label: 'Goals'),
      ],
    );
  }
}

class BottonNavigationProvider extends ChangeNotifier {
  final PageController _controller = new PageController();
  int _ventanaSeleccionada = 0;

  get ventanaSeleccionada => this._ventanaSeleccionada;

  set ventanaSeleccionada(int i) {
    this._ventanaSeleccionada = i;
    if (i == 0 || i == 3) {
      controller.animateToPage(i,
          duration: Duration(seconds: 1), curve: Curves.ease);
      notifyListeners();
    }
  }

  get controller => this._controller;
}
