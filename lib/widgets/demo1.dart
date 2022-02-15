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
            onPressed: () {}, icon: Icon(Icons.add), label: Text("漂浮按钮")),
        OutlinedButton(onPressed: () {}, child: Text("OutlineButton")),
      ],
    );
  }
}
