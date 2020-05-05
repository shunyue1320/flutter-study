import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('容器部件')
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.pink,
              constraints: BoxConstraints(maxWidth: 60, maxHeight: 30),
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blue,
              ),
            ),
            Container(
              width: 200,
              height: 60,
              // color: Colors.red,
              // padding: EdgeInsets.all(10),
              // padding: EdgeInsets.fromLTRB(5, 10, 15, 20),
              padding: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  color: Colors.yellow,
                  width: 5,
                  style: BorderStyle.solid,
                ),
                // borderRadius: BorderRadius.circular(10),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(5, 5),
                    blurRadius: 10,
                    spreadRadius: 1
                )],
                //渐变
                gradient: LinearGradient(colors: [Colors.green, Colors.yellow, Colors.pink])
                // gradient: RadialGradient(colors: [
                //   Color.fromRGBO(255, 0, 0, 0.2),
                //   Color.fromRGBO(0, 255, 0, 0.7),
                //   Color.fromRGBO(0, 0, 255, 1),
                // ])
                // shape: BoxShape.circle //形状
              ),
              child: Text('datadatadatadatadatadatdatadatadatadataa'),
            ),
          ]
        ),
      ),
    );
  }
}
