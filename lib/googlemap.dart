import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'From:',
                hintStyle:
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.blue),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'To:',
                hintStyle:
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.blue),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.blue,
                )),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
              ),
            ),
          ),
          Image.asset(
            'images/googlemap.jpg',
            height: 337,
            width: 400,
          ),
        ],
      ),
    ); // Container
  }
}
