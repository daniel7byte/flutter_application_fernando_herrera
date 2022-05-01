import 'dart:convert';
import 'package:flutter/services.dart';

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    loadData();
  }

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/menu_options.json');

    Map dataMap = json.decode(resp);
    options = dataMap['routes'];

    return options;
  }
}

final menuProvider = _MenuProvider();
