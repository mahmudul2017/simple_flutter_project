import 'package:flutter/material.dart';
import 'package:simple_project/drawer/drawer.dart';

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact',
      home: contactState(),
    );
  }
}

class contactState extends StatefulWidget {
  @override
  _contactStateState createState() => _contactStateState();
}

class _contactStateState extends State<contactState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerModel(),
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child: Text('Contact',
          style: TextStyle(fontSize: 18, color: Colors.lightBlue, fontWeight: FontWeight.bold),),
      ),
    );
  }
}

