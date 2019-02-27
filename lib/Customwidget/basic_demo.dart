import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  TextStyle _textStyle = TextStyle(fontSize: 18.0);

  final String _author = '礼拜';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.airline_seat_recline_normal, size: 32.0,),
            padding: EdgeInsets.only(left: 16.0),
            margin: EdgeInsets.only(left: 23.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(
                  color: Colors.blue,
                  width: 3.0,
                  style: BorderStyle.solid
              ),
              //borderRadius: BorderRadius.only(topLeft: Radius.circular(64.0)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Colors.blueAccent,
                  blurRadius: 25.0,
                  spreadRadius: -9.0
                )
              ],
              shape: BoxShape.circle

            ),
          )
        ],
      ),
    );
  }
}

class NewWidget1 extends StatelessWidget {
  const NewWidget1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: 'sad撒大所大所',
            style: TextStyle(
                fontSize: 34.0,
                color: Colors.black12,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w100),
            children: [
          TextSpan(text: '.ner', style: TextStyle(fontSize: 17.0, color: Colors.black12,))
        ]));
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
    @required String author,
    @required TextStyle textStyle,
  })  : _author = author,
        _textStyle = textStyle,
        super(key: key);

  final String _author;
  final TextStyle _textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      'testestttestestt${_author}esttesttesttesttestttestesttesttesttesttesttestttestesttesttesttesttesttestttestesttesttesttesttesttesttesttesttesttesttestt',
      textAlign: TextAlign.start,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
