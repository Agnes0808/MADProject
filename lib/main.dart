import 'package:flutter/material.dart';
import 'package:lab12/traffic.dart';
import 'drawer.dart';
import 'home.dart';
import 'LoginRegistration.dart';
import 'about.dart';
import 'traffic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
// This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = 'Home';
  int index = 0;
  List<Widget> list = [Home(), LoginRegistration(), About(), Traffic()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        //body: Home(),
        //drawer: MyDrawer(),
        body: list[index],
        drawer: MyDrawer(onTap: (context, i, txt) {
          setState(() {
            index = i;
            title = txt;
            Navigator.pop(context);
          });
        }),
      ),
    );
  }
}
