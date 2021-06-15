import 'package:flutter/material.dart';
import 'package:flutter_meet/index.dart';

main(List<String> args) {
  return runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: '/app', //默认访问就是/
      routes: {
        //整个路由的配置
        '/app': (BuildContext context) {
          return IndexPage();
        },
      },
    );
  }
}
