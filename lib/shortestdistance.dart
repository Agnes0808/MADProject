import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: Column(children: <Widget>[
          Text(
              'Shortest Distance from Nanyang Polytechnic to Woodlands MRT Station',
              style: new TextStyle(color: Colors.black, fontSize: 20.0)),
          Image.asset(
            'images/mapdistance.jpg',
            height: 374,
            width: 440,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'By Car(Shortest Distance)',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '12km',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                '17min',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ]) // Column
        ); // Container
  }
}
