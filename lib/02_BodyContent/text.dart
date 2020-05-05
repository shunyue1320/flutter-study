import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("text文字"),
        ),
        body: Column(children: <Widget>[
          Text("data",
            style: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,  //斜体
              color: Color(0xaaff0000),
              letterSpacing: 5, //间距
              wordSpacing: 10,
              height: 1.5,
              shadows: [Shadow( //阴影
                color: Colors.pink,
                offset: Offset(10,10)
              )]
            ),
          ),
          Text(
            '11112sdvdh放得开v诺福克开发v能否v你打开的反馈v诺福克v防溺水发v开年饭',
            textAlign: TextAlign.right,
            softWrap: false
          ),
          Text.rich(
            TextSpan(
              text: '地方v空间还是看v就',
              children: [
                TextSpan(text: '百度', style: styles,
                recognizer: TapGestureRecognizer()..onTap = (){
                  print("点击了我");
                },
                ),
                TextSpan(text: 'baidu', style: TextStyle(fontSize: 24, color: Colors.red))
              ]
            )
          )
        ]));
  }

  TextStyle styles = TextStyle(fontSize: 35,color: Colors.blue);
}
