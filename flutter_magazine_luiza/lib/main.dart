import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine Luiza',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Ofertas do dia'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset("assets/images/logo.jpg"),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/images/linha.jpg"),
            Expanded(
              child: ListView(
                children: [   
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    child: Row( 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/celular.jpg", width: 100.0,),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(                 
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Smartphone Samsung Galaxy A71 128GB Azul 6GB RAM", style: TextStyle(fontSize: 16.0),),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 7.0),
                                  child: Text("Tela 6,7” Câm. Quádrupla Câm. + Selfie 32MP",style: TextStyle(fontSize: 12.0),), 
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("R\$ 1.979,97", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.blue ),),
                                        Text("10x de R\$ 212,90 sem juros", style: TextStyle(fontSize: 12.0, color: Colors.blue ),)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                      Icon(Icons.favorite, color: Color(0xFFDB44A7),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ), 
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    child: Row( 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/geladeira.jpg", width: 100.0,),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(                 
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Geladeira Brastemp Frost Free Duplex Evox", style: TextStyle(fontSize: 16.0),),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 7.0),
                                  child: Text("375L BRM45 HKANA",style: TextStyle(fontSize: 12.0),), 
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("R\$ 2.698,00", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.blue ),),
                                        Text("10x de R\$ 269,80 sem juros", style: TextStyle(fontSize: 12.0, color: Colors.blue ),)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                      Icon(Icons.favorite_border, color: Color(0xFFDB44A7),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ), 
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    child: Row( 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/fritadeira.jpg", width: 100.0,),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(                 
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Fritadeira Elétrica sem Ólei/Air Fryer Nell Smart", style: TextStyle(fontSize: 16.0),),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 7.0),
                                  child: Text("Preta 2,4L com Timer",style: TextStyle(fontSize: 12.0),), 
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("R\$ 229,00", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.blue ),),
                                        Text("5x de R\$ 45,98 sem juros", style: TextStyle(fontSize: 12.0, color: Colors.blue ),)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                      Icon(Icons.favorite_border, color: Color(0xFFDB44A7),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ), 
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    child: Row( 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/computador.jpg", width: 100.0,),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(                 
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("PC Gamer Neologic Start NLI81426 Ryzen 3 2200G 8GB", style: TextStyle(fontSize: 16.0),),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 7.0),
                                  child: Text("Radeon Vega 8 integrado + SSD 240GB",style: TextStyle(fontSize: 12.0),), 
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("R\$ 4.859,00", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.blue ),),
                                        Text("12x de R\$ 404.92 sem juros", style: TextStyle(fontSize: 12.0, color: Colors.blue ),)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                      Icon(Icons.favorite, color: Color(0xFFDB44A7),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ), 
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    child: Row( 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/microfone.jpg", width: 100.0,),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(                 
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Microfone de Mesa Condensador para Celular, Computador e Notebook", style: TextStyle(fontSize: 16.0),),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 7.0),
                                  child: Text("Redshock",style: TextStyle(fontSize: 12.0),), 
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("R\$ 99,90", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.blue ),),
                                        Text("3x de R\$ 33,30", style: TextStyle(fontSize: 12.0, color: Colors.blue ),)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                      Icon(Icons.favorite_border, color: Color(0xFFDB44A7),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ), 
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    child: Row( 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/ventilador.jpg", width: 100.0,),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(                 
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ventilador de Parede e Mesa Mondial Maxi Power", style: TextStyle(fontSize: 16.0),),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 7.0),
                                  child: Text("NV-15-6P-FB 30cm 3 Velocidades",style: TextStyle(fontSize: 12.0),), 
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("R\$ 89,90", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.blue ),),
                                        Text("2x de R\$ 44,95 sem juros", style: TextStyle(fontSize: 12.0, color: Colors.blue ),)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                      Icon(Icons.favorite, color: Color(0xFFDB44A7),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ), 
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    child: Row( 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/drone.jpg", width: 100.0,),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(                 
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Drone Multilaser Eagle FPV", style: TextStyle(fontSize: 16.0),),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 7.0),
                                  child: Text("Câmera HD Flips 360",style: TextStyle(fontSize: 12.0),), 
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("R\$ 1.979,97", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.blue ),),
                                        Text("10x de R\$ 212,90 sem juros", style: TextStyle(fontSize: 12.0, color: Colors.blue ),)
                                      ],
                                    ),
                                    Column(
                                      children: [
                                      Icon(Icons.favorite_border, color: Color(0xFFDB44A7),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ), 
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),         
      ),
    );
  }
}
