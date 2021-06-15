import 'package:flutter/material.dart';
import 'home.dart';
import 'contacts.dart';
import 'mine.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int cn = 0;
  List test = [HomePage(), ContactsPage(), MinePage()];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                cn = index;
              });
            },
            currentIndex: cn, //默认选择第一个索引
            selectedItemColor: Color(0xff7cc9a5),
            unselectedItemColor: Color(0x80535050),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('首页'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.perm_contact_cal),
                title: Text('联系人'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity),
                title: Text('我的'),
              ),
            ]),
        body: Container(
          child: test[cn],
        ));
  }
}
