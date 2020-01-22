import 'package:flutter/material.dart';
import 'package:flutter2ndproject/predictgenderdemo.dart';
import 'package:flutter2ndproject/userdetails.dart';
import 'package:flutter2ndproject/searchdemo.dart';
import 'package:flutter2ndproject/login.dart';
import 'package:flutter2ndproject/product-detail.dart';
import 'home.dart';
import 'package:splashscreen/splashscreen.dart';

void main(){
   runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
    routes: {
      '/':(context) => MyApp(),
      '/Homepage':(context) => HomePage(),
      '/predictgender':(context) => HomeScreen(),
      '/userdetail':(context) => UserDetail(),
      '/testpage':(context) => TestPage(),
      '/login':(context) => Login(),
       '/productdetail':(context) => ProductDetail(),
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
      navigateAfterSeconds: new Login(),
      title: new Text('Welcome To SplashScreen',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
    );
  }
}

