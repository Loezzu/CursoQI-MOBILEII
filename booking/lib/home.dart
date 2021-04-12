import 'package:booking/hotel.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  List<Hotel> hoteis = [
    Hotel(
      name: "Hotel Transilvânia",
      description: "Quarto Deluxe com cama King-size",
      photo: "assets/images/foto1.png",
      haveClimatizedEnvironment: true,
      haveSnack: true,
      haveTransport: true,
      numOfDays: 4,
      numOfStars: 5,
      price: 2790,
      points: 9.1,
    ),
    Hotel(
      name: "Hotel Malibu",
      photo: "assets/images/foto2.png",
      numOfStars: 4,
      points: 9.6,
      haveRoomService: true,
      haveWifi: true,
      haveSnack: true,
      description: "Excelente culinária típica e uma linda vista do Mar",
      numOfDays: 6,
      price: 1780.0,
      promotionPrice: 1456.0,
      isAppPromotion: true,
    ),
    Hotel(
      name: "Hotel Porto Mauá",
      photo: "assets/images/foto3.png",
      numOfStars: 3,
      points: 8.9,
      haveSnack: true,
      haveClimatizedEnvironment: true,
      havePool: true,
      description: "Quarto Deluxe com cama King-size",
      numOfDays: 4,
      price: 2670.0,
    ),
    Hotel(
      name: "Hotel Recanto Da Paz",
      photo: "assets/images/foto4.png",
      numOfStars: 2,
      points: 9.0,
      haveTransport: true,
      haveSnack: true,
      haveClimatizedEnvironment: true,
      description: "Quarto Deluxe com cama King-size",
      numOfDays: 8,
      price: 1780.0,
      promotionPrice: 1456.0,
      isAppPromotion: true,
    ),
    Hotel(
      name: "Hotel Acapulco",
      photo: "assets/images/foto5.png",
      numOfStars: 5,
      points: 9.9,
      haveTransport: true,
      havePool: true,
      haveSnack: true,
      description: "Excelente culinária típica e uma linda vista do Mar",
      numOfDays: 4,
      price: 2790.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF003680),
        title: Image.asset("assets/images/logo.png"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 5.0,
        ),
        child: ListView.builder(
          itemBuilder: buildList,
          itemCount: hoteis.length,
        ),
      ),
    );
  }

  Widget buildList(BuildContext context, int index) {
    Hotel hotel = hoteis.elementAt(index);
    return Container(
      margin: EdgeInsets.only(
        bottom: 17.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ?? -> Se for nulo faça isso...
          Image.asset(
            hotel.photo ?? "assets/images/placeholder.png",
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      hotel.name ?? "Hotel sem nome",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Row(
                      children: buildStars(hotel.numOfStars ?? 1),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Chip(
                      label: Text(
                        hotel.points.toString(),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      backgroundColor: Color(0xFF003680),
                      labelPadding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: buildDifferentials(
                          haveSnack: hotel.haveSnack,
                          haveClimatizedEnvironment:
                              hotel.haveClimatizedEnvironment,
                          haveTransport: hotel.haveTransport,
                          havePool: hotel.havePool,
                          haveRoomService: hotel.haveRoomService,
                          haveWifi: hotel.haveWifi,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  hotel.description ?? "",
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Text(
                      "${hotel.numOfDays} diárias",
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Row(
                      children: buildPrice(
                        oldPrice: hotel.price,
                        newPrice: hotel.promotionPrice,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    (hotel.isAppPromotion == true)
                        ? Chip(
                            label: Text("Só no APP"),
                            labelStyle: TextStyle(
                              fontSize: 8.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            backgroundColor: Color(0xFFF19920),
                            labelPadding: EdgeInsets.symmetric(
                              horizontal: 4.0,
                            ),
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildStars(
    int numStars,
  ) {
    List<Widget> listStars = [];

    if (numStars > 5) {
      numStars = 5;
    }

    for (int index = 0; index < numStars; index++) {
      listStars.add(
        Container(
          margin: EdgeInsets.only(
            right: 2.0,
          ),
          child: Icon(
            Icons.star,
            size: 10.0,
            color: Colors.amber,
          ),
        ),
      );
    }
    return listStars;
  }

  List<Widget> buildDifferentials({
    bool? haveClimatizedEnvironment,
    bool? haveRoomService,
    bool? haveSnack,
    bool? havePool,
    bool? haveWifi,
    bool? haveTransport,
  }) {
    List<Widget> listOfBuildDifferentials = [];

    if (haveClimatizedEnvironment != null && haveClimatizedEnvironment) {
      listOfBuildDifferentials.add(
        Container(
          margin: EdgeInsets.only(
            right: 15.0,
          ),
          child: Column(
            children: [
              Image.asset("assets/images/floco.png"),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Ambiente\nClimatizado",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 8.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    }

    if (haveRoomService != null && haveRoomService) {
      listOfBuildDifferentials.add(
        Column(
          children: [
            Image.asset(
              "assets/images/servico_de_quarto.png",
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Serviço de\nquarto",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    if (haveSnack != null && haveSnack) {
      listOfBuildDifferentials.add(
        Column(
          children: [
            Image.asset("assets/images/xicara.png"),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Refeições\ninclusas",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    if (havePool != null && havePool) {
      listOfBuildDifferentials.add(
        Column(
          children: [
            Image.asset("assets/images/piscina.png"),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Área de\n natação",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    if (haveWifi != null && haveWifi) {
      listOfBuildDifferentials.add(
        Column(
          children: [
            Image.asset("assets/images/wifi.png"),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Wi-Fi\ngratuito",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    if (haveTransport != null && haveTransport) {
      listOfBuildDifferentials.add(
        Column(
          children: [
            Image.asset("assets/images/onibus.png"),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Transporte\nAeroporto / Hotel",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    return listOfBuildDifferentials;
  }

  List<Widget> buildPrice({
    double? oldPrice,
    double? newPrice,
  }) {
    List<Widget> list = [];

    if (newPrice != null && oldPrice != null && newPrice < oldPrice) {
      list.add(
        Text(
          "R\$ ${oldPrice.toStringAsFixed(2)}",
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            color: Colors.red,
            fontSize: 8.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
      list.add(
        SizedBox(
          width: 5.0,
        ),
      );
      list.add(
        Text(
          "R\$ ${newPrice.toStringAsFixed(2)}",
          style: TextStyle(
            color: Color(0xFF0E9347),
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    } else {
      list.add(
        Text(
          "R\$ ${oldPrice?.toStringAsFixed(2)}",
          style: TextStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
    return list;
  }
}
