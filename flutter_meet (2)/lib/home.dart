import 'package:flutter/material.dart';
import 'join.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('会议与聊天'),
      ),
      body: HYItem(),
      backgroundColor: Color(0x4DD7D3D3),
    );
  }
}

class HYItem extends StatefulWidget {
  @override
  _HYItemState createState() => _HYItemState();
}

class _HYItemState extends State<HYItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            height: 150.0,
            padding: EdgeInsets.only(top: 20.0),
            child: Container(
              height: 425.0,
              color: Color(0xFFFFFFFF),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: new RaisedButton(
                          onPressed: () {
                            print('点击新会议事件');
                          },
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          child: Mycontain(
                            image:
                                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2017-12%2F201712131350366067.png&refer=http%3A%2F%2Fpic.qqtn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625966856&t=f406a8f25c542c5443474879b19bbd50', //放图片和文字
                            text: '新会议',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: new RaisedButton(
                          onPressed: () {
                            print('点击加入会议事件');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        JoinPage()));
                          },
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          child: Mycontain(
                            image:
                                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2017-12%2F201712131350366067.png&refer=http%3A%2F%2Fpic.qqtn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625966856&t=f406a8f25c542c5443474879b19bbd50', //放图片和文字
                            text: '加入会议',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: new RaisedButton(
                          onPressed: () {
                            print('点击预约会议事件');
                          },
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          child: Mycontain(
                            image:
                                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2017-12%2F201712131350366067.png&refer=http%3A%2F%2Fpic.qqtn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1625966856&t=f406a8f25c542c5443474879b19bbd50', //放图片和文字
                            text: '预约会议',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30.0)),
          Container(
            width: 500.0,
            height: 220.0,
            color: Colors.white,
            child: Text('  暂无会议安排'),
          ),
        ],
      ),
    );
  }
}

class Mycontain extends StatelessWidget {
  final String image;
  final String text;
  const Mycontain({Key key, this.image, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Container(
                width: 60,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover)),
              ),
              flex: 3,
            ),
            Padding(padding: EdgeInsets.only(top: 5.0)),
            Expanded(
              child: Text(text),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
