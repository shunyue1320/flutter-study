import 'package:flutter/material.dart';

class TmallPage extends StatefulWidget {
  @override
  _TmalPageState createState() => _TmalPageState();
}

class _TmalPageState extends State<TmallPage> {
  //实例化一个全局的key与onPressed事件关联
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  //轮播图模拟数据
  List<String> _indexBanner = [
    "http://tanzhouweb.com/mg/img/1-banner/1.jpg",
    "http://tanzhouweb.com/mg/img/1-banner/2.jpg",
    "http://tanzhouweb.com/mg/img/1-banner/3.jpg"
  ];
  //网格模拟的数据
  List<Map> _indexCat = [
    {'pic': "http://tanzhouweb.com/mg/img/2-navIcon/1.gif", 'con': "1分夺宝"},
    {'pic': "http://tanzhouweb.com/mg/img/2-navIcon/2.jpg", 'con': "9.9包邮"},
    {'pic': "http://tanzhouweb.com/mg/img/2-navIcon/3.gif", 'con': "限时快抢"},
    {'pic': "http://tanzhouweb.com/mg/img/2-navIcon/4.jpg", 'con': "返校套装"},
    {'pic': "http://tanzhouweb.com/mg/img/2-navIcon/5.png", 'con': "签到"},
    {'pic': "http://tanzhouweb.com/mg/img/2-navIcon/6.jpg", 'con': "两件套49"},
    {'pic': "http://tanzhouweb.com/mg/img/2-navIcon/7.jpg", 'con': "小个运动鞋"},
    {'pic': "http://tanzhouweb.com/mg/img/2-navIcon/8.png", 'con': "29元美妆"},
    {'pic': "http://tanzhouweb.com/mg/img/2-navIcon/9.jpg", 'con': "男装热卖"},
    {'pic': "http://tanzhouweb.com/mg/img/2-navIcon/10.gif", 'con': "已抢7000件"}
  ];
  //商品数据
  List<Map> _indexGoods = [
    { "pic": "http://tanzhouweb.com/mg/img/7-like/1.jpg",
      "label": ["吊带连衣裙","网纱","明星同款","韩版"],
      "price": "¥79",
      "collection": "555",
      "collectIcon": "http://tanzhouweb.com/mg/img/7-like/icon.jpg"
    },
    {
      "pic": "http://tanzhouweb.com/mg/img/7-like/2.jpg",
      "label": ["棒球服","宽松","韩范","白色","新款"],
      "price": "¥69.3",
      "collection": "834",
      "collectIcon": "http://tanzhouweb.com/mg/img/7-like/icon.jpg"
    },
    {
      "pic": "http://tanzhouweb.com/mg/img/7-like/3.jpg",
      "label": [ "时尚套装","春季","新款"],
      "price": "¥51.69",
      "collection": "9608",
      "collectIcon": "http://tanzhouweb.com/mg/img/7-like/icon.jpg"
    },
    {
      "pic": "http://tanzhouweb.com/mg/img/7-like/4.jpg",
      "label": ["熊毛绒玩具","泰迪","女生"],
      "price": "¥68.6",
      "collection": "967",
      "collectIcon": "http://tanzhouweb.com/mg/img/7-like/icon.jpg"
    },
    {
      "pic": "http://tanzhouweb.com/mg/img/7-like/5.jpg",
      "label": ["洗鞋神器","去黄"],
      "price": "¥68.6",
      "collection": "967",
      "collectIcon": "http://tanzhouweb.com/mg/img/7-like/icon.jpg"
    },
    {
      "pic": "http://tanzhouweb.com/mg/img/7-like/6.jpg",
      "label": ["尖头单鞋","浅口","一脚蹬","扣带", "懒人","百搭","韩版"],
      "price": "¥68.6",
      "collection": "984",
      "collectIcon": "http://tanzhouweb.com/mg/img/7-like/icon.jpg"
    },
    {
      "pic": "http://tanzhouweb.com/mg/img/7-like/7.jpg",
      "label": ["时尚套装","中长款针织","春季","日系","字母"],
      "price": "¥68",
      "collection": "1.3w",
      "collectIcon": "http://tanzhouweb.com/mg/img/7-like/icon.jpg"
    },
    {
      "pic": "http://tanzhouweb.com/mg/img/7-like/8.jpg",
      "label": ["鸽鸽", "大礼包","超大","一箱"],
      "price": "¥78.99",
      "collection": "398",
      "collectIcon": "http://tanzhouweb.com/mg/img/7-like/icon.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      //appBar头部导航栏
      appBar: AppBar(
        centerTitle: true,
        //elevation: 0,  //bar底部阴影
        leading: IconButton(
          highlightColor: Colors.transparent, //高亮透明
          splashColor: Colors.transparent, //水波纹透明
          icon: Icon(Icons.list),
          onPressed: () {
            //打开抽屉
            _globalKey.currentState.openDrawer();
          }
        ),
        title: Text('天猫TMALL'),
        actions: <Widget>[
          //登入按钮实现方法一
          // FlatButton(
          //   textColor: Colors.white //文字颜色也可以在这里设置
          //   onPressed: () {
          //     _globalKey.currentState.openEndDrawer();
          //   },
          //   child: Text(('登录'), style: TextStyle(color: Colors.white))
          // ),
          //登入按钮实现方法二
          //InkWell给child元素绑定点击事件
          InkWell(
            onTap: () {
              _globalKey.currentState.openEndDrawer();
            },
            child: Container(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                children: <Widget>[Text('登录')],
              )
            )
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            height: 50,
            padding: EdgeInsets.all(6),
            child: InkWell(
              onTap: () {
                //点击搜索触发的点击事件
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return searchPage();
                  })
                );
              },
              child: Container(
                color: Colors.white,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center, //水平居中
                  children: <Widget>[
                    SizedBox(width: 10),  //占位标签
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),  //占位标签
                    Text('搜索商品/品牌', style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
            )
          ),
        ),
      ),
      //drawer左边抽屉
      drawer: Drawer(),
      //drawer右边抽屉
      endDrawer: Drawer(),
      //body页面的主体内容
      body: ListView(
        //上拉回弹效果
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          //轮播 start
          AspectRatio(
            aspectRatio: 16 / 8,
            child: Container(
              // color: Colors.blue,
              child: PageView(
                onPageChanged: (int index) {
                  //轮播图点击事件
                  print('$index');
                },
                children: _indexBanner.map((item) {
                  return Image.network('${item}');
                }).toList()
              )
            ),
          ),
          // 网格 start
          Container(
            color: Colors.white60,
            height: 168,
            //网格布局
            child: GridView.count(
              crossAxisCount: 5,
              children: _indexCat.map((item) {
                return Container(
                  //网格边框
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.grey)
                  // ),
                  child: Column(
                    //垂直居中
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //圆形图片
                      ClipOval(
                        child: Image.network('${item['pic']}', width: 50, height: 50),
                      ),
                      Text('${item['con']}', style: TextStyle(fontSize: 12))
                    ],
                  ),
                );
              }).toList(),
            )
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: _indexGoods.map((item) {
                return Container(
                  width: 190,
                  height: 280,
                  // padding: EdgeInsets.only(bottom: 10),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 190,
                        height: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage('${item['pic']}'),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                    ],
                  ),
                );
              }).toList()
            )
          )
        ],
      ),
    );
  }
}


//模拟跳转的搜索页面
class searchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('搜索界面')
      ),
       body: Text('假装我是搜索界面的内容'),
    );
  }
}