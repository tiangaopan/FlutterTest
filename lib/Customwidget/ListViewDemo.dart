
import 'package:flutter/material.dart';
import '../model/Post.dart';

class ListViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _itemListView,
    );
  }

  Widget _itemListView(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0,),
          Text(
            posts[index].title,
            style: TextStyle(fontSize: 18.0, color: Colors.blue),
          ),
          Text(
            posts[index].author,
            style: TextStyle(fontSize: 18.0, color: Colors.deepOrange),
          ),
          SizedBox(height: 16.0,),
        ],

      ),
    );
  }

}