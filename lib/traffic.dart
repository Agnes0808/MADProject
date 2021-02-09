import 'package:flutter/material.dart';
import 'weatherforecast.dart';
import 'googlemap.dart';
import 'shortestdistance.dart';

class Traffic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.umbrella,
                  color: Colors.yellow,
                )),
                Tab(
                    icon: Icon(
                  Icons.map,
                  color: Colors.greenAccent,
                )),
                Tab(icon: Icon(Icons.directions_walk)),
              ],
            ),
            title: Text('Traffic Monitoring'),
          ),
          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
            ],
          ), //TabBarView
        ), //Scaffold
      ), //DefaultTabController
    ); //MaterialApp
  }
}
