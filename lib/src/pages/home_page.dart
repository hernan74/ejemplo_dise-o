import 'package:ejemplo_social_app/src/pages/estadisticas.dart';
import 'package:ejemplo_social_app/src/pages/pagina_principal.dart';
import 'package:ejemplo_social_app/src/widget/botton_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _CambiarVentana(),
      bottomNavigationBar: BottonNavigationBar(),
    );
  }
}

class _CambiarVentana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final seleccion = Provider.of<BottonNavigationProvider>(context);

    return PageView(
      controller: seleccion.controller,
      children: [PaginaPrincipal(), EstadisticasPage()],
    );
  }
}
