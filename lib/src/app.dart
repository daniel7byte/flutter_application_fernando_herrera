import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

import 'package:flutter_application_1/src/pages/outlet_page.dart';
// import 'package:flutter_application_1/src/pages/interface_demo_page.dart';
// import 'package:flutter_application_1/src/pages/counter_page.dart';
// import 'package:flutter_application_1/src/pages/interface_demo_page.dart';
// import 'package:flutter_application_1/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: CounterPage(),
      // home: InterfaceDemoPage(),
      home: OutletPage(),
    );
  }
}
