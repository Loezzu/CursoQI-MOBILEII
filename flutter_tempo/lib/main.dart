import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Previsão do Tempo",
      debugShowCheckedModeBanner: false,
      color: Colors.cyan,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text("Previsão do Tempo"),
        backgroundColor: Colors.blueAccent,
        
      ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: EdgeInsets.fromLTRB(10.00, 10.00, 0, 0),
                child: Column(
                  children: [
                    Text('Gravataí - RS', style: TextStyle(fontSize: 25.00, color: Colors.white),),
                  ], 
                ),
            ),
      
            Container(
              padding: EdgeInsets.fromLTRB(10.00, 0, 0, 0),
                child: Column(      
                  children: [
                     Text('Seg - 12:00', style: TextStyle(fontSize: 18.00, color: Colors.white),),
                  ],  
                ),
            ),
            
            Container(  
              child: Column(
                children: [

                  Container(
                    padding: EdgeInsets.all(54.00),

                  child: Column(children: [
                  Image.asset("assets/images/weather-sun.png",
                  ),

                  
                  Text('35°', style: TextStyle(fontSize: 50.00, color: Colors.white), ),
                  Text('Céu Claro', style: TextStyle(fontSize: 20.00, color: Colors.white), ),
                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Text("Min: 30° ",style: TextStyle(fontSize: 20.0,color: Colors.white,),),
                      Text("Máx: 37°",style: TextStyle(fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.bold),),
                                 ],     
                            ),
                  
                  ],),
                  
                  ),
   
                  Container(
                    padding: EdgeInsets.fromLTRB(10.00, 15.0, 10.0, 35.0),
                    
                    margin: EdgeInsets.only(
                      top: 10.0,
                    ),
                    decoration: BoxDecoration(
                     
                      color: Colors.blueAccent,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 1° Coluna
                        Column(
                          children: [
                            Image.asset("assets/images/weather-cloudy.png", width: 60.00,),
                            Text(
                              "Amanhã",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            
                            Row(
                              children: [
                                   Text("Min: 18° ",style: TextStyle(fontSize: 16.0,color: Colors.white,),),
                                   Text("Máx: 25°",style: TextStyle(fontSize: 16.0,color: Colors.white, fontWeight: FontWeight.bold),),
                                 ],     
                            ),
                            
                            
                            
                            SizedBox(
                              height: 15.0,
                            ),

                            Image.asset("assets/images/weather-pouring.png", width: 68.00,),
                            Text(
                              "Sexta-Feira",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          

                            Row(
                              children: [
                                   Text("Min: 12° ",style: TextStyle(fontSize: 16.0,color: Colors.white,),),
                                   Text("Máx: 19°",style: TextStyle(fontSize: 16.0,color: Colors.white, fontWeight: FontWeight.bold),),
                                 ],     
                            ),
                            
                           
                          ],             
                        ),
                        //2° coluna
                        Column(
                          children: [
                            Image.asset("assets/images/weather-lightning.png", width: 65.00,),
                            Text(
                              "Terça-Feira",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            


                            Row(
                              children: [
                                  Text("Min: 12° ",style: TextStyle(fontSize: 16.0,color: Colors.white,),),
                                  Text("Máx: 20°",style: TextStyle(fontSize: 16.0,color: Colors.white, fontWeight: FontWeight.bold),),
                                 ],     
                            ),
                            
                            
                            SizedBox(
                              height: 15.0,
                            ),

                            Image.asset("assets/images/weather-sun.png", width: 55.00,),
                            Text(
                              "Sábado",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          

                            Row(
                              children: [
                                  Text("Min: 25° ",style: TextStyle(fontSize: 16.0,color: Colors.white,),),
                                  Text("Máx: 30°",style: TextStyle(fontSize: 16.0,color: Colors.white, fontWeight: FontWeight.bold),),
                                 ],     
                            ),
                            
                          ],                    
                        ),
                        // 3° Coluna
                        Column(
                          children: [
                            Image.asset("assets/images/weather-pouring.png", width: 63.00,),
                            Text(
                              "Quarta-Feira",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            
                            Row(
                              children: [
                                  Text("Min: 15° ",style: TextStyle(fontSize: 16.0,color: Colors.white,),),
                                  Text("Máx: 23°",style: TextStyle(fontSize: 16.0,color: Colors.white, fontWeight: FontWeight.bold),),
                                 ],     
                            ),
                            
                           SizedBox(
                              height: 15.0,
                            ),

                            Image.asset("assets/images/weather-sun.png", width: 55.00,),
                            Text(
                              "Domingo",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          
                           Row(
                              children: [
                                  Text("Min: 18° ",style: TextStyle(fontSize: 16.0,color: Colors.white,),),
                                  Text("Máx: 25°",style: TextStyle(fontSize: 16.0,color: Colors.white, fontWeight: FontWeight.bold),),
                                 ],     
                            ),
                          ],
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
