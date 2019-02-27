import 'package:flutter/material.dart';

class BottomNat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomState();
  }
}

class _BottomState extends State {
  int _currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currenIndex,
        onTap: _onTapHandler,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.adjust), title: Text('主页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_to_photos), title: Text('旅途')),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplanemode_inactive), title: Text('我的'))
        ]);
  }

  void _onTapHandler(int value) {
    setState(() {
      _currenIndex = value;
    });
  }
}
