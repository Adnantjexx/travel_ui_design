import 'package:flutter/material.dart';
import 'package:traveluidesign/models/destination_model.dart';
import 'package:traveluidesign/models/hotel_model.dart';

class Hotel_Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("Exclusive Hotels",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight:
                  FontWeight.bold,
                  letterSpacing: 1.5,
                  color: Color(0xffF2F2F2)),),
            GestureDetector(
              onTap: (){

              },
              child: Text("See All",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                    color: Colors.tealAccent),),
            ),
          ],
        ),
        Container(
          height: 310,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (BuildContext context, int index){
              Hotel hotel = hotels[index];
              return Container(
                margin: EdgeInsets.all(10),
                width: 260,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom: 15,
                      child: Container(
                        width: 260,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Color(0xff006760),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                hotel.name,
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                    color: Color(0xffF2F2F2)
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                hotel.address,
                                style: TextStyle(
                                  fontSize: 15,
                                    color: Color(0xffF2F2F2)
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "\$${hotel.price} / night",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                    color: Color(0xffF2F2F2)
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 10),
                        ],
                      ),
                      child: ClipRRect(
                        child: Image(
                          image: AssetImage(hotel.imageUrl),
                          height: 180,
                          width: 240,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
