import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JoinPage extends StatefulWidget {
  @override
  _JoinPageState createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("加入会议"),
        centerTitle: true, // 标题居中
      ),
      body: CSItem(),
    );
  }
}

class CSItem extends StatefulWidget {
  @override
  _CSItemState createState() => _CSItemState();
}

class _CSItemState extends State<CSItem> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  bool ff=false;
  bool ss=false;
  bool mm=false;
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController1.dispose();
    myController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10.0)),
          TextField(
            controller: myController1,
            decoration: InputDecoration(
                icon: Icon(Icons.label_important),
                hintText: "请输入会议号",
                border: OutlineInputBorder()),
          ),
          Padding(padding: EdgeInsets.only(top: 5.0)),
          TextField(
            controller: myController2,
            decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: "请输入密码(选填)",
                border: OutlineInputBorder()),
                 obscureText: true, //隐藏输入
          ),

          Padding(padding: EdgeInsets.only(top: 10.0)),
          SizedBox(
            width: 350.0,
            height: 42.0,
            child: RaisedButton(
                color: Colors.cyan,
                child: Center(
                  child: Text(
                    "加入",
                    style: Theme.of(context).primaryTextTheme.headline,
                  ),
                ),
                // 设置按钮圆角
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {
                  return showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text("用户名：" +
                              myController1.text +
                              "---密码：" +
                              myController2.text),
                        );
                      });
                }),
          ),
          Padding(padding: EdgeInsets.only(top: 13.0)),
          Text("入会选项"),
          //Padding(padding: EdgeInsets.only(top: 5.0)),
          Container(
            height: 50.0,
            color: Color(0x26A0A0A0),
            child: Row(
              children: [
                Expanded(
                  child: Text("服务器设置"),
                  flex: 6,
                ),
                Expanded(
                  child: Icon(Icons.chevron_right),
                  flex: 1,
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 8.0)),
          Container(
            child: Column(
              children: [
                Container(
                  height: 50,
                  color: Color(0x26A0A0A0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "开启摄像头",
                      ),
                      Switch(
                        value: this.ff,
                        onChanged: (bool v) {
                          setState(() {
                            this.ff= v;
                          });
                        },
                      ),
                      // Switch(value: value, onChanged: onChanged)
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  color: Color(0x26A0A0A0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "开启麦克风",
                      ),
                      Switch(
                        value: ss,
                        onChanged: (value) {
                          setState(() {
                            this.ss=value;
                          });
                        },
                      ),
                      // Switch(value: value, onChanged: onChanged)
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  color: Color(0x26A0A0A0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "开启美颜",
                      ),
                      Switch(
                        value: mm,
                        onChanged: (value) {
                          setState(() {
                            this.mm=value;
                          });
                        },
                      ),
                      // Switch(value: value, onChanged: onChanged)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
