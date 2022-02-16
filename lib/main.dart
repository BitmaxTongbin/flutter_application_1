import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/demo1.dart';
import 'package:flutter_application_1/widgets/demo_img.dart';
import 'package:flutter_application_1/widgets/navigator_dmo.dart';

void main(List<String> args) {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
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
      body: InputDemo(),
    );
  }
}

class CountPage extends StatefulWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$count"),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text("点击"),
        ),
      ],
    );
  }
}
