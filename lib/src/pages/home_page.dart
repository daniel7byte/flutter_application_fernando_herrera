import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/alert_page.dart';
import 'package:flutter_application_1/src/pages/counter_page.dart';
import 'package:flutter_application_1/src/pages/outlet_page.dart';
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
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            const Text(
              'My Creations',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Curriculum App'),
                    leading: Icon(Icons.add_to_home_screen),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.blue,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'curriculum_app');
                    },
                  ),
                  ListTile(
                    title: Text('Outlet App'),
                    leading: Icon(Icons.shopping_cart),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.blue,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OutletPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Counter App'),
                    leading: Icon(Icons.timer),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.blue,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CounterPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const Text(
              'Course - Fernando Herrera',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: _options(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _options() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: _optionsList(context, snapshot.data),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
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
