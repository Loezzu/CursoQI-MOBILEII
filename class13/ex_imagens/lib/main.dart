import 'dart:convert';

import 'package:ex_imagens/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Minezinho'),
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
  
  final _byteImage = Base64Decoder().convert(Constant.ASSET_BASE64_LOGO);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Image.asset(Constant.ASSET_LOGO, width: 100, height: 100, ),
          Text('Minecraft Yeah, você conhece'),
          Image.network(Constant.ASSET_NETWORK_LOGO, width: 100, height: 100, ),
          Text('Minecraft Yeah, você conhece'),
          Image.memory(_byteImage),
          Text('Exemplo de imagem em base64'),
          
        ],


      )
    );
  }
}
