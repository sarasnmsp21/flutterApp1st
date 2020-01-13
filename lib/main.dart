import 'package:flutter/material.dart';
import 'package:flutter2ndproject/predictgender.dart';
import 'package:flutter2ndproject/userdetails.dart';
import 'drawer.dart';
import 'package:splashscreen/splashscreen.dart';

void main(){
   runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
    routes: {
      '/':(context) => MyApp(),
      '/Homepage':(context) => HomePage(),
      '/predictgender':(context) => PredictGender(),
      '/userdetail':(context) => UserDetail(),
    },
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new HomePage(),
      title: new Text('Welcome To SplashScreen',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
    );
  }
}

