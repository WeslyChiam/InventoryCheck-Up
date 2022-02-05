import 'package:flutter/material.dart';
//import './pages/splash.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'pages/dataTable.dart';
import 'pages/loginPage.dart';
import 'pages/table.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      //Custom Made Splash Screen
      //home: Splash(),
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Image(
          image: AssetImage('logo/ITU-logo.png'),
        ),
        //splash: Icons.home,
        //nextScreen: loginPage(),
        nextScreen: table(),
        // nextScreen: MyHomePage(
        //   title: 'Welcome',
        // ),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
