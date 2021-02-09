import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text('Weather Forecast',
                    style: new TextStyle(color: Colors.black, fontSize: 32.0)),
                Image.asset(
                  'images/sun.png',
                  height: 200,
                  width: 200,
                ),
                Text('Sunny',
                    style: new TextStyle(color: Colors.black, fontSize: 28.0)),
                Text('30°C',
                    style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                Text('Singapore',
                    style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                Text('Feb 10, 2021',
                    style: new TextStyle(color: Colors.black, fontSize: 20.0)),
                Text('18:30',
                    style: new TextStyle(color: Colors.black, fontSize: 20.0)),
              ],
            ),
          ),
        ]) // Column
        ); // Container
  }
}
