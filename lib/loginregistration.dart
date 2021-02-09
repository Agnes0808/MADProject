import 'package:flutter/material.dart';

class LoginRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new RaisedButton(
                child: new Text("LogIn"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
              ),
              new RaisedButton(
                child: new Text("SignUp"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdRoute()),
                  );
                },
              ),
            ],
          ),
        ));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Email Adress"),
            ),
            TextField(decoration: InputDecoration(hintText: "Password")),
            SizedBox(height: 12),
            SizedBox(
              width: double.maxFinite,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Log In'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Email Adress"),
            ),
            TextField(decoration: InputDecoration(hintText: "Password")),
            TextField(
                decoration: InputDecoration(hintText: "Confirm Password")),
            SizedBox(height: 12),
            SizedBox(
              width: double.maxFinite,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Register'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
