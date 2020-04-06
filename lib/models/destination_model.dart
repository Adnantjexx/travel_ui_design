import 'package:flutter/material.dart';

import 'activity_model.dart';

class Destination {

  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination(
      this.imageUrl,
      this.city,
      this.country,
      this.description,
      this.activities
      );
}

List<Activity> activities = [

  Activity(
    "assets/images/image7.png",
    "st.adnantjee Italy",
    "Sighteseeing Tour",
    ["9:00 am","11:00 am"],
    5,
    200

  ),
  Activity(
      "assets/images/image4.png",
      "st.adnantjee Hawai",
      "Sighteseeing Tour",
      ["9:00 am","11:00 am"],
      4,
      500

  ),
  Activity(
      "assets/images/image6.jpg",
      "st.adnantjee Maldives",
      "Sighteseeing Tour",
      ["9:00 am","11:00 am"],
      5,
      600

  ),
];

List<Destination> destinations = [

  Destination(
      "assets/images/image3.jpg",
      "islands",
      "Maldives",
      "Visite the best Islands in Maldives, Visite the best",
      activities
  ),
  Destination(
      "assets/images/image2.jpg",
      "islands",
      "Hawail",
      "Visite the best Islands in Hawail, Visite the best",
      activities
  ),
  Destination(
      "assets/images/image1.jpg",
      "Nature",
      "Italy",
      "Visite the best Place in Italy is good idea, Visite the best",
      activities
  ),
];
