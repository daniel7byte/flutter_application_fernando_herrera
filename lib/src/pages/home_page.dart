import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/providers/menu_provider.dart';

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
        print(snapshot.data);

        return ListView(
          children: _optionsList(snapshot.data),
        );
      },
    );
  }

  List<Widget> _optionsList(List<dynamic>? data) {
    final List<Widget> options = [];

    if (data != null) {
      data.forEach((element) {
        final widgeTemp = ListTile(
          title: Text(element['title']),
          leading: Icon(Icons.supervised_user_circle),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: () {},
        );

        options
          ..add(widgeTemp)
          ..add(Divider());
      });

      return options;
    } else {
      return [];
    }
  }
}
