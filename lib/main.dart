//引入flutter的dart库
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/TmallPage.dart';
//启动函数
void main() => runApp(MyApp());

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MaterialApp 是flutter的页面根组件
    return MaterialApp(
      title: 'main根页面',
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: TextTheme(
          subhead: TextStyle(color: Colors.white),
        )
      ),
      debugShowCheckedModeBanner: false,  //清除debug
      //home表示页面信息
      home: TmallPage()
    );
  }
}
