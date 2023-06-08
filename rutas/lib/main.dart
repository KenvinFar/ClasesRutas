import 'package:flutter/material.dart';
import 'package:rutas/scr/pages/registro.pege.dart';
import 'scr/pages/home_page.dart';
import 'scr/pages/login_page.dart';
import 'scr/pages/menu_pages.dart';


void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _routes = {
    '/Home': (context)=> HomePage(),
    '/Login': (context)=> login_page(),
    '/menu': (context)=> menu_page(),
    '/registro' : (context) => resgitro_pege()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/Home',
      routes: _routes,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => resgitro_pege(),);
      },
     // home: HomePage(),
    );
  }
}