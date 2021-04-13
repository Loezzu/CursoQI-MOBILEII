import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lemon_pie_recipe/receita.dart';

class Home extends StatelessWidget {
  List<Receita> receitas = [
    Receita(
      foto: "assets/images/lemon_pie.jpg",
      nome: "Torta de limão",
      preparo: 40,
      rendimento: 15,
      favoritos: 129.754,
      comentarios: 1407,
      ingredienteMassa: "200 g de biscoito de maisena\n150 g de margarina",
      ingredienteRecheio:
          "1 lata de leite condensado (395 g)\n1 caixa de creme de leite (200 g)\nsuco de 4 limões\nraspas de 2 limões",
      ingredienteCobertura:
          "3 ou 4 claras de ovo\n3 colheres (sopa) de açúcar\nraspas de 2 limões para decorar",
      modoDePreparoMassa:
          "Triture o biscoito de maisena em um liquidificador ou processador.\nJunte a margarina e bata mais um pouco.\nDespeje a massa em uma forma de fundo removível (27 cm de diâmetro).\nCom as mãos, espalhe os biscoitos triturados no fundo e nas laterais da forma, cobrindo toda área de maneira uniforme.\nLeve ao forno médio (180° C), preaquecido, por aproximadamente 10 minutos.",
      modoDePreparoRecheio:
          "Bata todos os ingredientes no liquidificador (exceto as raspas de limão) até obter um creme liso e firme.\nRecheie a massa já assada e leve à geladeira por 30 minutos.",
      modoDePreparoCobertura:
          "Bata as claras em neve e acrescente o açúcar.\nMisture até obter um ponto de suspiro e leve ao forno até dourar.\nDesenforme a torta (sem retirar o fundo falso), despeje a cobertura e acrescente as raspas de limão.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: Image.asset("assets/images/logo.jpg"),
            onPressed: () {},
          );
        }),
        backgroundColor: Color(0xFFFF3D0A),
        title: Text('Tudo Gostoso'),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: buildList,
          itemCount: receitas.length,
        ),
      ),
    );
  }

  Widget buildList(BuildContext context, int index) {
    Receita receita = receitas.elementAt(index);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  receita.foto ?? "assets/images/logo.jpg",
                ),
              ],
            ),
          
          Container(
            color: Color(0xFFFF3D0A),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        receita.nome ?? "Name",
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.watch_later, color: Colors.white,),
                          Text("PREPARO", style:TextStyle(color: Colors.white)),
                          Text("${receita.preparo} min", style:TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          FaIcon(FontAwesomeIcons.cheese, color: Colors.white,),
                          Text("RENDIMENTO", style:TextStyle(color: Colors.white),),
                          Text("${receita.rendimento} Porções", style:TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.watch_later, color: Colors.white,),
                          Text("FAVORITOS", style:TextStyle(color: Colors.white)),
                          Text("${receita.favoritos}", style:TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.watch_later, color: Colors.white,),
                          Text("COMENTÁRIOS", style:TextStyle(color: Colors.white)),
                          Text("${receita.comentarios}", style:TextStyle(color: Colors.white)),
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.bookOpen, color: Color(0xFFFF3D0A),),
              SizedBox(width: 7.0,),
              Text("INGREDIENTES", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFF3D0A), fontSize: 17.0), ),
            ],
          ),
        ],
      ),
    );
  }
}
