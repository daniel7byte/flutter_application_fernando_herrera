import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _textStyle = new TextStyle(fontSize: 26);

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('My beautiful counter'),
        // centerTitle: false,
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Número de clics',
                style: _textStyle,
              ),
            ),
            Center(
              child: Text(
                '$_counter',
                style: _textStyle,
              ),
            ),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _createButton(),
    );
  }

  Widget _createButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          onPressed: _remove,
          child: Icon(Icons.remove),
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          onPressed: _add,
          child: Icon(Icons.add),
        ),
      ],
    );
  }

  void _add() {
    setState(() {
      _counter++;
    });
  }

  void _remove() {
    setState(() {
      _counter--;
    });
  }

  void _reset() {
    showToast('Set 0');
    setState(() {
      _counter = 0;
    });
  }

  void showToast(String msg, {int? duration, int? gravity}) {
    Toast.show(msg, duration: duration, gravity: gravity);
  }
}
