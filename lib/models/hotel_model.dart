import 'package:flutter/material.dart';

class Hotel {

  String imageUrl;
  String name;
  String address;
  int price;

  Hotel(this.imageUrl, this.name, this.address, this.price);


}

final List<Hotel> hotels = [

  Hotel(

    "assets/images/image7.png",
    "Italy Hotel",
    "st,adnantjee Italy",
    120,
  ),
  Hotel(

    "assets/images/image4.png",
    "hawail hotel",
    "st, adnantjeexx Hawai",
    300,
  ),
  Hotel(

    "assets/images/image6.jpg",
    "Maldives Hotel",
    "st,adnantjeexx Maldives",
    600,
  ),
];