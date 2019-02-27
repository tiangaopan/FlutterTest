
import 'package:flutter/material.dart';
import 'ListViewDemo.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => debugPrint("leading is pressed")),
        centerTitle: true,
        title: Text(
          '我是标题',
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w100,
              fontSize: 24.0),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.chat),
              onPressed: () => debugPrint('chat is pressed')),
          IconButton(
              icon: Icon(Icons.add_a_photo),
              onPressed: () => debugPrint('add_a_photo is pressed'))
        ],
      ),
      body: ListViewDemo(),
    );
  }
}