import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  //无状态 widgt
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("11111"),
        elevation: 10.0,
        centerTitle: true,
      ),
    );
  }
}
