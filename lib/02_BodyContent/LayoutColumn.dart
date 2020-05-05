import 'package:flutter/material.dart';

class LayoutColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row')
      ),
      body: Container(
        alignment: Alignment.topLeft,
          child: Container(
            width: 400,
            height: 250,
            color: Colors.grey,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround, //垂直间隙对齐
            crossAxisAlignment: CrossAxisAlignment.center, //居左对齐(默认)
            // crossAxisAlignment: CrossAxisAlignment.start, //居左对齐
            // crossAxisAlignment: CrossAxisAlignment.end, //居右对齐

            children: <Widget>[
              Container(
                width: 50,  //double.infinity
                height: 40,
                color: Colors.pink,
                child: Text('aaa'),
              ),
              Container(
                width: 100,
                height: 60,
                color: Colors.yellow,
                child: Text('bbb'),
              ),
              Container(
                width: double.infinity,
                height: 80,
                color: Colors.blue,
                child: Text('ccc'),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
