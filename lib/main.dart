import 'package:ejemplo_social_app/src/pages/home_page.dart';
import 'package:ejemplo_social_app/src/widget/botton_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BottonNavigationProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Social app',
        initialRoute: '/',
        routes: {'/': (_) => HomePage()},
      ),
    );
  }
}
