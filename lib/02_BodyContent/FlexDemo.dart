import 'package:flutter/material.dart';

class FlexDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wrap')
      ),
      body: Container(
        child: Container(
          width: double.infinity,
          height: 200,
          color: Colors.grey,
          alignment: Alignment.topLeft,
          child: SingleChildScrollView(
            // scrollDirection: Axis.vertical, //y轴滚动(默认)
            scrollDirection: Axis.horizontal, //x轴滚动
            // reverse: true, //后->前滑动
            padding: EdgeInsets.all(10),
            controller: ScrollController(initialScrollOffset: 50),  //初始滚动位置
            child: Row(children: <Widget>[ //滚动的子元素列 Column / Row
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.red
                ),
                Container(
                  width: 400,
                  height: 50,
                  color: Colors.blue
                ),Container(
                  width: 150,
                  height: 50,
                  color: Colors.yellow
                ),
                Container(
                  width: 400,
                  height: 50,
                  color: Colors.red
                ),
                Container(
                  width: 200,
                  height: 50,
                  color: Colors.blue
                )
              ],
            )
          )
        )
      ),
    );
  }
}


// class FlexDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('wrap')
//       ),
//       body: Container(
//         alignment: Alignment.topLeft,
//         child: Container(
//           width: 300,
//           height: 200,
//           color: Colors.grey,
//           child: Stack(
//             // alignment: Alignment.center,  //居中
//             alignment: AlignmentDirectional.center,
//             overflow: Overflow.visible, //超出显示
//             children: <Widget>[
//               Positioned(
//                 top: 100,
//                 left: 20,
//                 child: Container(
//                   width: 150,
//                   height: 150,
//                   color: Colors.pink,
//                   child: Text('aa')
//                 ),
//               ),
//               Container(
//                 width: 150,
//                 height: 150,
//                 color: Colors.yellow,
//                 child: Text('bb')
//               ),
//             ],
//           )
//         ),
//       ),
//     );
//   }
// }


// class FlexDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('flex')
//       ),
//       body: Container(
//         alignment: Alignment.topLeft,
//         child: Container(
//           width: 400,
//           height: 250,
//           color: Colors.grey,
//           child: Flex(
//             direction: Axis.horizontal, //水平反向(direction不能为空)
//             // direction: Axis.vertical, //垂直反向
//             children: <Widget>[
//               Expanded( //flex默认=1
//                 flex: 1,
//                 child: Container(
//                   //width: double.infinity //垂直反向使用
//                   height: 40,
//                   color: Colors.pink,
//                   child: Text('aaa'),
//                 ),
//               ),
//               Expanded(
//                 flex: 2,
//                 child: Container(
//                   height: 60,
//                   color: Colors.yellow,
//                   child: Text('bbb'),
//                 ),
//               ),
//               Expanded(
//                 flex: 3,
//                 child: Container(
//                   height: 80,
//                   color: Colors.blue,
//                   child: Text('ccc'),
//                 ),
//               ),
//             ]
//           )
//         ),
//       ),
//     );
//   }
// }


// class FlexDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('wrap')
//       ),
//       body: Container(
//         alignment: Alignment.topLeft,
//         child: Container(
//           width: 300,
//           height: 200,
//           color: Colors.grey,
//           child: Wrap(
//             spacing: 10, //左右间距
//             runSpacing: 10, //下间距
//             direction: Axis.vertical, //垂直
//             crossAxisAlignment: WrapCrossAlignment.start,
//             children: <Widget>[
//               Container(
//                 width: 140,
//                 height: 80,
//                 color: Colors.pink,
//                 child: Text('aaa'),
//               ),
//               Container(
//                 width: 140,
//                 height: 80,
//                 color: Colors.yellow,
//                 child: Text('bbb'),
//               ),
//               Container(
//                 width: 140,
//                 height: 80,
//                 color: Colors.blue,
//                 child: Text('ccc'),
//               ),
//             ]
//           )
//         ),
//       ),
//     );
//   }
// }
