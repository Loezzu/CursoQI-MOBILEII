import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "Pokedex Lista",
  debugShowCheckedModeBanner: false,
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
      appBar: AppBar(
        title: Text("Pokédex",),
        centerTitle: true,
        backgroundColor: Color(0xFFE3350D),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 20.0,
        ),
        child: ListView( 
          children: [
            Row(
              children: [
               Image.network("https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png", height: 80.0,),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(                 
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bulbasaur #001", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 3.0),
                        child: Text("Há uma semente de planta em suas costas desde o dia em que o Pokémon nasceu. A semente cresce lentamente.",style: TextStyle(fontSize: 15.0),)                   
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [                 
                          Column(
                            children: [
                              Text("Tipo", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),           
                              Chip(
                              labelPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),  
                              label:    
                               Text("Grama"),
                               backgroundColor: Color(0xFF78C850),
                               labelStyle: TextStyle(
                                 color: Colors.white, fontSize: 10.0
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text("Peso", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("5.5 kg", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Altura", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ), 
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("0.7 m", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
              ),
                ),
              ), 
              ],
            ),
            SizedBox(height: 8.0,),
            Row(
              children: [
                Image.network(
                  "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/004.png",
                  height: 80.0,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Charmander #004",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 3.0),
                          child: Text(
                            "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda.",
                            style: TextStyle(
                              fontSize: 15.0
                            ),
                          ),
                        ),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("Tipo", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),    
                              Chip(                           
                              labelPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 1),  
                              label:    
                               Text("Fogo"),
                               backgroundColor: Color(0xFFF08030),
                               labelStyle: TextStyle(
                                 color: Colors.white, fontSize: 10.0
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text("Peso", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("8.5 kg", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Altura", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ), 
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("0.6 m", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          )
                        ],
                      )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0,),
            Row(
              children: [
                Image.network(
                  "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/007.png",
                  height: 80.0,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Squirtle #007",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 3.0),
                          child: Text(
                            "Quando ele retrai seu longo pescoço em sua concha, ele esguicha água com força vigorosa.",
                            style: TextStyle(
                              fontSize: 15.0
                            ),
                          ),
                        ),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("Tipo", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),    
                              Chip(                           
                              labelPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 1),  
                              label:    
                               Text("Água"),
                               backgroundColor: Color(0xFF6890F0),
                               labelStyle: TextStyle(
                                 color: Colors.white, fontSize: 10.0
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text("Peso", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("9.0 kg", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Altura", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ), 
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("0.6 m", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          )
                        ],
                      )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0,),
            Row(
              children: [
                Image.network(
                  "https://assets.pokemon.com/assets/cms2/img/pokedex/full/010.png",
                  height: 80.0,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Caterpie #010",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 3.0),
                          child: Text(
                            "Para proteção, ele libera um fedor horrível da antena em sua cabeça para afastar os inimigos.",
                            style: TextStyle(
                              fontSize: 15.0
                            ),
                          ),
                        ),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("Tipo", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),    
                              Chip(                           
                              labelPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 1),  
                              label:    
                               Text("Inseto"),
                               backgroundColor: Colors.green,
                               labelStyle: TextStyle(
                                 color: Colors.white, fontSize: 10.0
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text("Peso", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("2.9 kg", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Altura", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ), 
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("0.3 m", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          )
                        ],
                      )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0,),
            Row(
              children: [
                Image.network(
                  "https://assets.pokemon.com/assets/cms2/img/pokedex/full/012.png",
                  height: 80.0,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Butterfree #012",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 3.0),
                          child: Text(
                            "Em batalha, ele bate suas asas em grande velocidade para liberar poeira altamente tóxica no ar.",
                            style: TextStyle(
                              fontSize: 15.0
                            ),
                          ),
                        ),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("Tipo", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),    
                              Chip(                           
                              labelPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 1),  
                              label:    
                               Text("Inseto"),
                               backgroundColor: Colors.green,
                               labelStyle: TextStyle(
                                 color: Colors.white, fontSize: 10.0
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text("Peso", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("32.0 kg", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Altura", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ), 
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("1.1 m", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          )
                        ],
                      )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0,),
            Row(
              children: [
                Image.network(
                  "https://assets.pokemon.com/assets/cms2/img/pokedex/full/023.png",
                  height: 80.0,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ekans #023",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 3.0),
                          child: Text(
                            "Quanto mais velho fica, mais ele cresce. À noite, ele envolve seu longo corpo em torno de galhos de árvores para descansar.",
                            style: TextStyle(
                              fontSize: 15.0
                            ),
                          ),
                        ),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("Tipo", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),    
                              Chip(                           
                              labelPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 1),  
                              label:    
                               Text("Veneno"),
                               backgroundColor: Colors.deepPurpleAccent,
                               labelStyle: TextStyle(
                                 color: Colors.white, fontSize: 10.0
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text("Peso", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("6.9 kg", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Altura", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ), 
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("2.0 m", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          )
                        ],
                      )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0,),
            Row(
              children: [
                Image.network(
                  "https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png",
                  height: 80.0,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pikachu #025",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 3.0),
                          child: Text(
                            "Pikachu, que pode gerar eletricidade poderosa, tem bolsas nas bochechas que são extremamente macias e super elásticas.",
                            style: TextStyle(
                              fontSize: 15.0
                            ),
                          ),
                        ),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("Tipo", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),    
                              Chip(                           
                              labelPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 1),  
                              label:    
                               Text("Elétrico"),
                               backgroundColor: Colors.yellow,
                               labelStyle: TextStyle(
                                 color: Colors.white, fontSize: 10.0
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text("Peso", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("6.0 kg", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Altura", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ), 
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("0.4 m", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          )
                        ],
                      )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0,),
            Row(
              children: [
                Image.network(
                  "https://assets.pokemon.com/assets/cms2/img/pokedex/full/039.png",
                  height: 80.0,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jigglypuff #039",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 3.0),
                          child: Text(
                            "Jigglypuff tem uma capacidade pulmonar excelente, mesmo em comparação com outros Pokémon. Ele não vai parar de cantar suas canções de ninar até que seus inimigos adormeçam.",
                            style: TextStyle(
                              fontSize: 15.0
                            ),
                          ),
                        ),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text("Tipo", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),    
                              Chip(                           
                              labelPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 1),  
                              label:    
                               Text("Fada"),
                               backgroundColor: Color(0xFFFFC0CB),
                               labelStyle: TextStyle(
                                 color: Colors.white, fontSize: 10.0
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text("Peso", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("5.5 kg", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Altura", style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                              ), 
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("0.5 m", style: TextStyle(
                                fontSize: 10.0),
                              ),
                            ],
                          )
                        ],
                      )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

