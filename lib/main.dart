import 'package:flutter/material.dart';
import 'package:hello_world/pageview.dart';
import 'package:hello_world/row.dart';
import 'package:hello_world/startpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
  routes: {
    '/':(context)=>start(),
    // When navigating to the "/" route, build the FirstScreen widget.
    '/pageview': (context) => PageViewDemo(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/row': (context) => rowDemo(),
  },
    );
  }
}


