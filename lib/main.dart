import 'package:flutter/material.dart';
import 'package:flutter_app/Customwidget/ListViewDemo.dart';
import 'package:flutter_app/Customwidget/DrawerDemo.dart';
import 'package:flutter_app/Customwidget/BottomNavitionBarDemo.dart';
import 'package:flutter_app/Customwidget/basic_demo.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'helloFlutter',
    theme: ThemeData(
        primarySwatch: Colors.amber,
        highlightColor: Color.fromRGBO(255, 122, 255, 0.5),
        splashColor: Colors.white54),
    home: Hello(),
  ));
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
//            leading: IconButton(
//                icon: Icon(Icons.menu),
//                onPressed: () => debugPrint("leading is pressed")),
            centerTitle: true,
            title: Text(
              '我是标题',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 24.0),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.chat),
                  onPressed: () => debugPrint('chat is pressed')),
            ],
            bottom: TabBar(
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.amber,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.local_bar)),
                  Tab(icon: Icon(Icons.local_cafe)),
                ]),
          ),
          body: TabBarView(children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            Tab(
                icon: Icon(
              Icons.local_cafe,
              size: 128.0,
            )),
          ]),
          drawer: drawerdemo(),
          bottomNavigationBar: BottomNat(),
        ));
  }
}
