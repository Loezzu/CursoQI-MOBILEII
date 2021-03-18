import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // var _counter = 0;
  //
  // void _incrementCounter(){
  //   setState(() {
  //     _counter = _counter + 1;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Layout com Guias'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.android),),
              // Text('Guide 1'),
              // Text('Guide 2'),
            ],
          ),

          ),
          body: TabBarView(
            children: [
              Center(child: Text('first tab...' , style: TextStyle(fontSize: 30.0),),),
              Center(child: Text('second tab...', style: TextStyle(fontSize: 30.0),),),
            ],
          ),
        ),
    );
    
    // return Scaffold(
    //   appBar: AppBar(title: Text('Alooo <3'), centerTitle: true,),
    //   body: Center(
    //     child: Text('Quantidade de vezes: $_counter', style: TextStyle(fontSize: 20.0),),
    //   ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print('Testezinho fofo *-*');
      //     _incrementCounter();
      //   },
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      //
      // ),
    // );
  }
}
