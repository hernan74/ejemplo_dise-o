import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomToggleButtons extends StatelessWidget {
  final List<ToggleModel> elementos;

  const CustomToggleButtons({@required this.elementos});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _ToggleProvider(),
      child: Builder(builder: (context) {
        final provider = Provider.of<_ToggleProvider>(context);

        return Container(
          height: 40,
          decoration: BoxDecoration(
              color: Color(0xff3B1F83),
              borderRadius: BorderRadius.circular(40)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: elementos
                .map((e) => GestureDetector(
                      onTap: () => (provider.seleccion = e.index),
                      child: AnimatedContainer(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width /
                                elementos.length -
                            6,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: (provider.seleccion == e.index)
                                ? Color(0xffFFFDFD)
                                : Colors.transparent),
                        duration: Duration(milliseconds: 500),
                        child: Text(
                          e.titulo,
                          style: TextStyle(
                              color: (provider.seleccion == e.index)
                                  ? Color(0xff3B1F83)
                                  : Color(0xffFFFDFD)),
                        ),
                      ),
                    ))
                .toList(),
          ),
        );
      }),
    );
  }
}

class ToggleModel {
  String titulo;
  int index;
  ToggleModel({this.index, this.titulo});
}

class _ToggleProvider with ChangeNotifier {
  int _seleccion = 0;

  int get seleccion => this._seleccion;

  set seleccion(int seleccion) {
    this._seleccion = seleccion;
    notifyListeners();
  }
}
