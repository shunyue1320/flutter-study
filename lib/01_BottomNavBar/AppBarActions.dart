import 'package:flutter/material.dart';

class AppBarActions extends StatefulWidget {
  @override
  _AppBarActionsState createState() => _AppBarActionsState();
}

class _AppBarActionsState extends State<AppBarActions> {
  //初始选中值
  Choice _selectedChoice = choices[0];
  //选择方法
  _select(choice) {
    setState(() {
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("头部导航图标"),
        actions: <Widget>[
          IconButton(
              icon: Icon(choices[0].icon),
              onPressed: () {
                _select(choices[0]);
              }),
          IconButton(
              icon: Icon(choices[1].icon),
              onPressed: () {
                _select(choices[1]);
              }),
          IconButton(
            icon: Icon(Icons.add_alert),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  //弹窗提示
                  return AlertDialog(
                    actions: <Widget>[
                      FlatButton(
                          child: Text('确定'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                      FlatButton(
                          child: Text('取消'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          })
                    ],
                    content: Row(children: <Widget>[
                      Text(
                        '网络波动',
                        style: Theme.of(context).textTheme.subhead,
                      ),
                      Text(
                        '111111',
                        style: Theme.of(context).textTheme.subtitle,
                      ),
                    ]),
                  );
                },
              );
            },
          ),
          //选项弹出框
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return choices.skip(2).map((item) {
                return PopupMenuItem(
                  value: item,
                  child: Text(item.title),
                );
              }).toList();
            },
            color: Colors.blue,
            onSelected: _select,
          )
        ],
      ),
      body: Container(
        width: 400,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: ChoiceCard(
            choice: _selectedChoice,
          ),
        ),
      )
    );
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
