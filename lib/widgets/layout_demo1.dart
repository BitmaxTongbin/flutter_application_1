import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello layout"),
        ),
        body: Container(
          child: EdgeDemo(),
          // color: Colors.amber[200],
          // child: Flex(
          //   direction: Axis.vertical,
          //   children: [
          //     Expanded(
          //       child: Container(
          //         color: Colors.red,
          //         width: 100,
          //         height: 300,
          //       ),
          //       flex: 1,
          //     ),
          //     Container(
          //       color: Colors.blue[50],
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Color.fromARGB(255, 161, 84, 78),
          //       width: 100,
          //       height: 200,
          //     ),
          //   ],
          // ),
          // child: Row(
          //   // mainAxisSize: MainAxisSize.min, //babian
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   crossAxisAlignment: CrossAxisAlignment.end,

          //   children: [
          //     Container(
          //       color: Colors.red,
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.blue[50],
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Color.fromARGB(255, 161, 84, 78),
          //       width: 100,
          //       height: 200,
          //     ),
          //   ],
          // ),
          // child: Column(
          //   children: [
          //     Container(
          //       color: Colors.red,
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Colors.blue[50],
          //       width: 100,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Color.fromARGB(255, 161, 84, 78),
          //       width: 200,
          //       height: 100,
          //     ),
          //     Container(
          //       color: Color.fromARGB(255, 25, 78, 87),
          //       width: 100,
          //       height: 100,
          //     ),
          //   ],
          // ),
        ));
  }
}

class WrapDemo extends StatefulWidget {
  @override
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  List<int> list = List<int>.filled(20, 0, growable: true);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 20; i++) {
      list.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      alignment: WrapAlignment.spaceAround,
      spacing: 1.0,
      runSpacing: 1.0,
      children: list
          .map((e) => Container(
                height: 100,
                width: 100,
                child: Text(e.toString()),
                color: Colors.blue,
              ))
          .toList(),
    );
  }
}

class stakDemo extends StatelessWidget {
  const stakDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.green[300],
        ),
        Container(
          width: 50,
          height: 100,
          color: Color.fromARGB(255, 102, 50, 150),
        ),
        Positioned(
          // 定位布局
          child: Container(
            color: Colors.yellow[900],
          ),
          top: 10,
          left: 10,
          right: 10,
          bottom: 10,
        ),
      ],
    );
  }
}

class AlignDemo extends StatelessWidget {
  const AlignDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.green,
      child: Align(
        alignment: Alignment(-1, 0.5),
        child: FlutterLogo(size: 60),
      ),
    );
  }
}

class EdgeDemo extends StatelessWidget {
  const EdgeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 100,
    //   height: 199,
    //   color: Colors.red[200],
    //   margin: EdgeInsets.all(8),
    //   padding: EdgeInsets.all(18),
    //   child: Text("data"),
    // );
    //   return ConstrainedBox(
    //     constraints: BoxConstraints(
    //       minHeight: 50,
    //       minWidth: 50,
    //       maxHeight: 100,
    //       maxWidth: 100,
    //     ),
    //     child: Container(
    //       width: 10,
    //       height: 500,
    //       color: Colors.green[900],
    //     ),
    //   );
    return DecoratedBox(
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
