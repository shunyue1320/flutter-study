import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNaacBarState createState() => _BottomNaacBarState();
}

class _BottomNaacBarState extends State<BottomNavBar> {
  //点击导航时显示指定内容
  List<Widget> list = [Text('自行车'), Text('汽车'), Text('飞机')];
  //当前点击的导航下标
  int _currentController = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('底部导航栏'),
      ),
      //页面显示的主体内容
      body: list[_currentController],
      //浮动按钮代替中间导航按钮
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 60,
        height: 60,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white
        ),
        child: FloatingActionButton(
          child: Icon(Icons.directions_car),
          onPressed: () {
            setState(() {
              _currentController = 1;
            });
          },
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
          //当前选中的导航栏
          currentIndex: _currentController,
          //点击导航栏触发的事件
          onTap: (int index) {
            setState(() {
              _currentController = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.directions_bike), title: Text('自行车')),
            BottomNavigationBarItem(
                icon: Icon(Icons.directions_car), title: Text('汽车')),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplanemode_active), title: Text('飞机')),
          ]),
    );
  }
}
