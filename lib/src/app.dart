import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import 'package:flutter_application_1/src/pages/counter_page.dart';
// import 'package:flutter_application_1/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return MaterialApp(
      home: CounterPage(),
    );
  }
}
