import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './drawer/drawer.dart';
import './drawer/contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerModel(),
      appBar: AppBar(
        title: Text('Flutter Project'),
      ),
      body: Center(
        child: FlutterLogo(
          size: 100.0,
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
