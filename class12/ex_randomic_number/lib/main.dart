import 'package:flutter/material.dart';

import 'model/number.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Número Ramdomico'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

var _randomicNumber;

void generateNumber(){
  setState(() {
    _randomicNumber = Number.generateRandomicNumber();
  });
}

  @override
  void initState() {
    super.initState();
    generateNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Número randomico' ),),
        body: Column(
          children: [
            Text('Numero da Loteria', textAlign: TextAlign.center, style: TextStyle(fontSize: 50.0,),),
            Text('$_randomicNumber', textAlign: TextAlign.center, style: TextStyle(fontSize: 50.0, backgroundColor: Colors.purple, color: Colors.white),),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => generateNumber(),
          child: Icon(Icons.add),
        ),
    );
  }
}
