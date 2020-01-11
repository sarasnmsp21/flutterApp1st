import 'package:flutter/material.dart';
import 'package:flutter2ndproject/predictgender.dart';
import 'package:flutter2ndproject/userdetails.dart';
import 'drawer.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
    routes: {
      '/':(context) => HomePage(),
      '/predictgender':(context) => PredictGender(),
      '/userdetail':(context) => UserDetail(),
    },
    ),
  );
}
