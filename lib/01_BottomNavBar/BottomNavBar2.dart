import 'package:flutter/material.dart';
import 'package:flutter_app/01_BottomNavBar/BottomNavBar.dart';

class BottomNavBar2 extends StatefulWidget {
  @override
  _BottomNavBar2State createState() => _BottomNavBar2State();
}

class _BottomNavBar2State extends State<BottomNavBar2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("漂浮导航栏"),
        centerTitle: true,
      ),
      //浮动按钮
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),  //圆形的外弧效果
        color: Colors.blue,
        //自定义导航栏
        child: Row(
          //主轴对齐 / 两边对齐
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home, color: Colors.white), onPressed: () {}),
            IconButton(icon: Icon(Icons.home, color: Colors.white), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
