import 'package:flutter/material.dart';

class ImageIconDemo extends StatelessWidget {
  const ImageIconDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.add),
        IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        Container(
          width: double.infinity,
          child: Image.network(
            "http://p3.itc.cn/images01/20201001/26d8f8479e144817b3d63a3e6929399f.png",
            fit: BoxFit.fitHeight,
          ),
        ),
        Image.asset("images/img1.jpeg"),
      ],
    );
  }
}
