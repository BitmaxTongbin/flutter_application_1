// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green,
      child: const Text(
        "wen ben",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: () {}, child: Text("漂浮按钮")),
        TextButton(onPressed: () {}, child: Text("扁平按钮")),
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text("漂浮按钮")),
        OutlinedButton(onPressed: () {}, child: Text("OutlineButton")),
      ],
    );
  }
}

class CheckDemo extends StatefulWidget {
  const CheckDemo({Key? key}) : super(key: key);

  @override
  _CheckDemoState createState() => _CheckDemoState();
}

class _CheckDemoState extends State<CheckDemo> {
  bool _check = false;
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
            value: _switch,
            onChanged: (v) {
              setState(() {
                _switch = v;
              });
            }),
        Checkbox(
            value: _check,
            onChanged: (v) {
              setState(() {
                _check = v!;
              });
            })
      ],
    );
  }
}

class ProgressDemo extends StatelessWidget {
  const ProgressDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        LinearProgressIndicator(
          value: 5,
          valueColor: AlwaysStoppedAnimation(Colors.yellow),
        ),
        SizedBox(height: 16),
        Container(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.red),
          ),
        )
      ]),
    );
  }
}

class ClickDemo extends StatelessWidget {
  const ClickDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tag");
      },
      onDoubleTap: () {
        print("double tag");
      },
      child: Text("text tag click"),
    );
  }
}

class InputDemo extends StatefulWidget {
  const InputDemo({Key? key}) : super(key: key);

  @override
  _InputDemoState createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  GlobalKey _key = GlobalKey<FormState>();
  TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _user.dispose();
    _pass.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        key: _key,
        children: [
          TextFormField(
            controller: _user,
            autovalidateMode: AutovalidateMode.always,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.add),
              labelText: "账号",
              hintText: "请输入账号",
            ),
            validator: (v) {
              if (v == null || v.isEmpty) {
                return "请输入账号";
              }
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            autofocus: true,
            controller: _pass,
            autovalidateMode: AutovalidateMode.always,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.add),
              labelText: "密码",
              hintText: "请输入密码",
            ),
            validator: (v) {
              if (v == null || v.isEmpty || v.length < 8) {
                return "请输入密码";
              }
            },
          ),
          ElevatedButton(
            onPressed: () {
              // print(_user.text);
              // print(_pass.text);
            },
            child: Text("up date"),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(131, 201, 49, 38)),
            ),
          )
        ],
      ),
    );
  }
}
