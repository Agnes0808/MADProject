import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/superhero.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Super Hero',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'super_hero@nyp.edu.sg',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ), //Column
              ), //Padding
            ), //DrawerHeader
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => onTap(context, 0, 'Home'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('LoginRegistration'),
              onTap: () => onTap(context, 1, 'LoginRegistration'),
            ),
            ListTile(
              leading: Icon(Icons.arrow_circle_down),
              title: Text('About'),
              onTap: () => onTap(context, 2, 'About'),
            ),
            ListTile(
              leading: Icon(Icons.traffic),
              title: Text('Traffic'),
              onTap: () => onTap(context, 3, 'Traffic'),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () => onTap(context, 1, 'Profile'),
            ),
          ],
        ), //Column
      ), //Drawer
    ); //SizedBox
  }
}
