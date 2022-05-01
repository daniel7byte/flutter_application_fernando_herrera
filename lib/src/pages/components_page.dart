import 'package:flutter/material.dart';

class ComponentsPage extends StatelessWidget {
  const ComponentsPage({Key? key}) : super(key: key);

  static const options = ['Uno', 'Dos', 'Tres'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Components'),
      ),
      body: ListView(
        children: _createOptions(),
      ),
    );
  }

  List<Widget> _createOptions() {
    return options.map((option) {
      return Column(
        children: [
          ListTile(
            title: Text(option),
            subtitle: Text('This is a subtitle'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigator.pushNamed(context, '/$option');
            },
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
