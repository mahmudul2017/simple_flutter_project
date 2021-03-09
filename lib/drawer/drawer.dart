import 'package:flutter/material.dart';
import 'contact.dart';

class drawerModel extends StatefulWidget {
  @override
  _drawerModelState createState() => _drawerModelState();
}

class _drawerModelState extends State<drawerModel> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Go Rental BD',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            accountEmail: Text(
              'gorentalbd@gmail.com',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            currentAccountPicture: CircleAvatar(
              child: Text('Go',
                  style: TextStyle(fontSize: 24, color: Colors.blue)),
              backgroundColor: Colors.white,
            ),
            onDetailsPressed: () {},
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                child: Text('BD',
                    style: TextStyle(fontSize: 10, color: Colors.blue)),
                backgroundColor: Colors.white,
              )
            ],
          ),
          ListTile(
              leading: Icon(Icons.contacts),
              selected: true,
              title: Text(
                'Contacts',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              trailing: Icon(Icons.accessibility_sharp),
              enabled: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => contact(),
                ));
                print("Contacts clicked");
                /*Fluttertoast.showToast(
                    msg: "Contacts clicked",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);*/
              }),
          ListTile(
              leading: Icon(Icons.feedback),
              selected: true,
              title: Text(
                'Feedback',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              trailing: Icon(Icons.accessibility_new),
              enabled: true,
              onTap: () {
                print("Contacts clicked");
              }),
          Divider(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                  leading: Icon(
                    Icons.contacts,
                    color: Colors.redAccent,
                  ),
                  selected: true,
                  title: Text(
                    'About Us',
                    style: TextStyle(fontSize: 16, color: Colors.redAccent),
                  ),
                  //trailing: Icon(Icons.accessibility_sharp),
                  enabled: true,
                  onTap: () {
                    print("Contacts clicked");
                  }),
            ),
          )
        ],
      ),
    );
  }
}
