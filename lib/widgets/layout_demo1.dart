import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Product.dart';
import 'package:flutter_application_1/widgets/myColor.dart';

class CellView extends StatelessWidget {
  final Product products;
  const CellView({Key? key, required this.products}) : super(key: key);

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
            "images/" + products.iconname,
            width: 50,
            height: 50,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                products.name,
                style: TextStyle(color: MyColor.mainTextColor, fontSize: 14),
              ),
              Text(
                products.desc,
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
  bool show = false;
  late ScrollController _controller;
  late List _list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {});

    _list = <Product>[
      Product("注册赠金", "注册并开通合约账户", "Group1.png"),
      Product("首充赠金", "合约账户首充(任意币种)折合≥1000 USDT", "Group1.png"),
      Product("首充赠金", "合约账户首充(任意币种)折合≥3000 USDT", "Group1.png"),
      Product("新合约赠金", "开通合约账户30天内合约交易量≥50,000 USDT", "Group1.png"),
      Product("交易赠金", "开通合约账户30天内合约交易量≥500,000 USDT", "Group1.png"),
      Product("交易赠金", "开通合约账户30天内合约交易量≥1,000,000 USDT", "Group1.png"),
      Product("交易赠金", "开通合约账户30天内合约交易量≥1,000,000 USDT", "Group1.png"),
      Product("交易赠金", "开通合约账户30天内合约交易量≥1,000,000 USDT", "Group1.png"),
      Product("交易赠金", "开通合约账户30天内合约交易量≥1,000,000 USDT", "Group1.png"),
    ];
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 64,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Demo"),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                Stack(
                  children: const [
                    Image(
                      image: AssetImage("images/banner.png"),
                      width: 1100.0,
                      height: 133.0,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      left: 36.0,
                      top: 38,
                      child: Text(
                        "完成合约任务",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Positioned(
                      left: 36.0,
                      top: 64,
                      child: Text(
                        "领 220 USDT 赠金",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                  child: Container(),
                ),
                Row(
                  children: [
                    SizedBox(width: 16),
                    Text(
                      "* 合约赠金可用作保证金开仓及抵扣50%交易手续费",
                      style: TextStyle(
                        color: MyColor.subTextColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 100.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                Product tmp = _list.elementAt(index);
                return Container(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  color: MyColor.viewBgColor,
                  child: CellView(products: tmp),
                );
              },
              childCount: _list.length,
            ),
          ),
        ],
      ),
    );
  }
}
