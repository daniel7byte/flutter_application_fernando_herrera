import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/alert_page.dart';
import 'package:flutter_application_1/src/providers/menu_provider.dart';
import 'package:flutter_application_1/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
      ),
      body: _options(),
    );
  }

  Widget _options() {
    // menuProvider.loadData();

    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _optionsList(context, snapshot.data),
        );
      },
    );
  }

  List<Widget> _optionsList(BuildContext context, List<dynamic>? data) {
    final List<Widget> options = [];

    if (data != null) {
      data.forEach((element) {
        final widgeTemp = ListTile(
          title: Text(element['title']),
          leading: getIcon(element['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) {
            //     return AlertPage();
            //   },
            // );
            // Navigator.push(context, route);

            Navigator.pushNamed(context, element['route']);
          },
        );

        options
          ..add(widgeTemp)
          ..add(Divider());
      });

      return options;
    } else {
      return [
        CircularProgressIndicator(),
      ];
    }
  }
}
