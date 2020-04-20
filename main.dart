import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:circle_wheel_scroll/circle_wheel_render.dart';
import 'package:flutterapp4/modelclass.dart';

import 'package:circle_wheel_scroll/circle_wheel_scroll_view.dart';

 void main()=>runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:LastApp(),
    );
  }
}
