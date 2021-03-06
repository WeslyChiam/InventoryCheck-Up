import 'package:flutter/material.dart';

import '../main.dart';
import 'loginPage.dart';

class registerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 150.0,
              width: 190.0,
              padding: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
              ),
              child: Center(
                child: Image.asset('logo/logo.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'E-mail', hintText: 'example@mail.com')),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Password',
                  )),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(
                        title: "Home Page",
                      ),
                    ),
                    (route) => false,
                  );
                },
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => loginPage(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Text(
                    'Already a member? | Login Now',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
