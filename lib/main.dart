import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screen/Home.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme:ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white     
        ),
        textTheme: TextTheme(
          title: new TextStyle(color: Colors.white, fontSize: 16.0),
          body1: new TextStyle(color: Colors.black),
          button: new TextStyle(color: Colors.white),
        ),
        bottomAppBarColor: Colors.white,
       
      ),
      home: Home(),
          );
        }
      }
      
    

