import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/alert_page.dart';
import 'package:flutter_application_1/src/pages/avatar_page.dart';

import 'package:flutter_application_1/src/pages/home_page.dart';
import 'package:flutter_application_1/src/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: CounterPage(),
      // home: InterfaceDemoPage(),
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        // print('Ruta llamada: ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage(),
        );
      },
    );
  }
}
