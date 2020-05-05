import 'package:flutter/material.dart';

class LayoutRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('排版'),
      ),
      body: Container(
        child: Container(
          width: 400,
          height: 150,
          color: Colors.grey,
          alignment: Alignment.center, //垂直对齐方式
          child: Row(
            //水平对齐
            mainAxisAlignment: MainAxisAlignment.start,  //水平居对齐(默认)
            // mainAxisAlignment: MainAxisAlignment.center,  //水平居中对齐
            // mainAxisAlignment: MainAxisAlignment.end,  //水平居对齐
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,  //水平间距对齐
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,  //水平均匀对齐
            //mainAxisAlignment: MainAxisAlignment.spaceAround,  //水平间距为两边2倍对齐

            //横轴对齐
            crossAxisAlignment: CrossAxisAlignment.center, //横轴居中对齐(默认)
            // crossAxisAlignment: CrossAxisAlignment.stretch, //横轴展开最大高度对齐
            // crossAxisAlignment: CrossAxisAlignment.start, //横轴居顶对齐
            //crossAxisAlignment: CrossAxisAlignment.end, //横轴居顶对齐

            //textDirection: TextDirection.rtl, //右到左排版
            //mainAxisSize: MainAxisSize.max, //水平轴宽度大小
            //verticalDirection: VerticalDirection.down, //垂直对齐 (up上，down下)
            children: <Widget>[
              Container(
                width: 110,
                height: 60,
                color: Colors.pink,
                child: Text('aaa'),
              ),
              Container(
                width: 110,
                height: 80,
                color: Colors.yellow,
                child: Text('bbb'),
              ),
              Container(
                width: 110,
                height: 60,
                color: Colors.blue,
                child: Text('ccc'),
              ),
            ]
          ),
        )
      ),
    );
  }
}

