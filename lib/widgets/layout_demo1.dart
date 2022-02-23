import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/myColor.dart';

class CellView extends StatelessWidget {
  const CellView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: MyColor.cellViewBgColor,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        border: new Border.all(
          width: 1,
          color: Colors.white,
        ),
        boxShadow: [
          BoxShadow(
            color: MyColor.viewBorderColor,
            offset: Offset(-1.0, 1.0), //阴影x轴偏移量
            blurRadius: 10, //阴影模糊程度
            spreadRadius: 0, //阴影扩散程度
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "images/Group1.png",
            width: 50,
            height: 50,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "注册赠金",
                style: TextStyle(color: MyColor.mainTextColor, fontSize: 14),
              ),
              Text(
                "注册并开通合约账户",
                style: TextStyle(color: MyColor.subTextColor, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List<int> list = List<int>.filled(500, 0, growable: true);
  bool show = false;
  late ScrollController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {});
  }

  @override
  void dispose() {
    // your desired instructions here

    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("合约赠金"),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container(
                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                color: MyColor.viewBgColor,
                child: CellView());

            // return Text(list[index].toString());
          },
        ),
      ),
    );
  }
}
