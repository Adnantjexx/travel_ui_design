import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traveluidesign/models/destination_model.dart';
import 'package:traveluidesign/screens/destination_screen.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            Text("Top Destination",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight:
                  FontWeight.bold,
                  color: Color(0xffF2F2F2),
                  letterSpacing: 1.5),),
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
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index){
              Destination destination = destinations[index];
              return GestureDetector(
                onTap: (){
                  return Navigator.push(context, MaterialPageRoute(
                      builder: (_) => Destination_Screen(destination,),),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 210,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 15,
                        child: Container(
                          width: 200,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Color(0xff006760),
                            borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(
                          color: Colors.black12,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 6),
                          ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "${destination.activities.length} activities",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffF2F2F2)
                                  ),
                                ),
                                Text(
                                    "${destination.description}",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Color(0xffF2F2F2)
                                  ),
                                ),
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
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag: destination.imageUrl,
                              child: ClipRRect(
                                child: Image(
                                    image: AssetImage(destination.imageUrl),
                                  height: 180,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                      destination.city,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22,
                                      letterSpacing: 1.2,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,
                                      color: Colors.white,
                                      size: 18,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                          destination.country,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
