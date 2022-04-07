import 'package:flutter/material.dart';
import 'package:appnavegacion/error.dart';
import 'package:appnavegacion/inicio.dart';
import 'package:appnavegacion/perfil.dart';
import 'package:appnavegacion/servicios.dart';
import 'package:appnavegacion/team_page.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: <String, WidgetBuilder>{
        'profile': (BuildContext context) => ProfilePage(),
        'services': (BuildContext context) => ServicesPage(),
        'team': (BuildContext context) => TeamPage(),
        'home': (BuildContext context) => HomePage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext builder) => ErrorPage());
      },
    );
  }
}
