import 'package:flutter/material.dart';

class AppBarBottom extends StatefulWidget {
  AppBarBottom({Key key}) : super(key: key);

  @override
  _AppBarBottomState createState() => _AppBarBottomState();
}

class _AppBarBottomState extends State<AppBarBottom> {
  _SelectView(icon, text, id) {
    return PopupMenuItem(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Icon(icon, color: Colors.blue),
        Text(
          text,
          style: TextStyle(color: Colors.black),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    //tab使用这个组件
    return DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('AppBar与TabBar'),
            centerTitle: true,
            actions: <Widget>[
              PopupMenuButton(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                          child: _SelectView(Icons.message, '首页', 'A')),
                      PopupMenuItem(
                          child: _SelectView(Icons.message, '商品', 'B')),
                      PopupMenuItem(
                          child: _SelectView(Icons.message, '消息', 'C')),
                    ];
                  })
            ],
            bottom: TabBar(
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: choices.map((item) {
                return Tab(
                  text: item.title,
                  icon: Icon(item.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((item) {
              return Container(
                width: double.infinity,
                color: Colors.white70,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: ChoiceCard(
                    choice: item,
                  ),
                ),
              );
            }).toList(),
          ),
        ));
  }
}



//ChoiceCard将数据渲染到Card卡片组件上
class ChoiceCard extends StatelessWidget {
  final Choice choice;
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //滚动时的卡片小部件
    return Card(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              choice.icon,
              size: 120,
              color: Colors.white,
            ),
            Text(choice.title),
          ],
        ));
  }
}

//数据的类型
class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;
}

//模拟的数据
const List<Choice> choices = const <Choice>[
  const Choice(title: 'CAR', icon: Icons.directions_car),
  const Choice(title: 'BICYCLE', icon: Icons.directions_bike),
  const Choice(title: 'BOAT', icon: Icons.directions_boat),
  const Choice(title: 'BUS', icon: Icons.directions_bus),
  const Choice(title: 'TRAIN', icon: Icons.directions_railway),
  const Choice(title: 'WALK', icon: Icons.directions_walk),
];
