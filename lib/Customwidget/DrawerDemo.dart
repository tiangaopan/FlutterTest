import 'package:flutter/material.dart';

class drawerdemo extends StatelessWidget {
  const drawerdemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
//              DrawerHeader(
//                child: Center(
//                  child: Text('header'.toUpperCase()),
//                ),
//                decoration: BoxDecoration(color: Colors.deepOrange),
//              ),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight),
                      image: NetworkImage(
                          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4285231085,3140985279&fm=27&gp=0.jpg'))

              ),
              onDetailsPressed: () => Navigator.pop(context),
              accountName: Text('tiangaopan'),
              accountEmail: Text('tiangaopan1991@163.com',style: TextStyle(
                  color: Colors.white
              ),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3761559902,764387941&fm=27&gp=0.jpg'),
              ),
            ),
            ListTile(
              onTap: () => Navigator.pop(context),
              title: Text('message'),
              leading: Icon(Icons.access_alarm),
              subtitle: Row(
                children: <Widget>[
                  Text('副标题'),
                  Icon(Icons.airline_seat_flat)
                ],
              ),
            ),
            ListTile(
              onTap: () => Navigator.pop(context),
              title: Text(
                'liskedsad',
                textAlign: TextAlign.end,
              ),
              trailing: Icon(
                Icons.accessible,
                color: Colors.blue,
              ),
            ),
          ],
        ));
  }
}