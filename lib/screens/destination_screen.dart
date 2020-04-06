import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traveluidesign/models/activity_model.dart';
import 'package:traveluidesign/models/destination_model.dart';
import 'package:traveluidesign/widgets/RatingStars.dart';

class Destination_Screen extends StatefulWidget {

  final Destination destination;

  Destination_Screen(this.destination);

  @override
  _Destination_ScreenState createState() => _Destination_ScreenState();
}

class _Destination_ScreenState extends State<Destination_Screen> {

  Text _buildRatingStars(int rating){

    String stars = "";
    for(int i = 0; i<rating; i++){
      stars += "${Icon(Icons.star)}";
    }
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff003733),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6
                    ),
                  ]
                ),
                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image(
                        image: AssetImage(widget.destination.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30,
                        color: Colors.black87,
                        onPressed: (){
                          return Navigator.pop(context);
                        }
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.search),
                            iconSize: 25,
                            color: Colors.black87,
                            onPressed: (){
                              return Navigator.pop(context);
                            }
                        ),
                        IconButton(
                            icon: Icon(Icons.more_vert),
                            iconSize: 25,
                            color: Colors.black87,
                            onPressed: (){
                              return Navigator.pop(context);
                            }
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.destination.city,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 35,
                          letterSpacing: 1.2,
                          color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on,
                          color: Colors.white70,
                          size: 22,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.destination.country,
                          style: TextStyle(color: Colors.white70,fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              itemCount: widget.destination.activities.length,
                itemBuilder: (BuildContext context, int index){
                Activity activity = widget.destination.activities[index];
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
                      height: 170,
                      width: double.infinity,
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
                        padding: EdgeInsets.fromLTRB(100,20,20,20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 120,
                                  child: Text(
                                      activity.name,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                        color: Color(0xffF2F2F2)
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text("\$${activity.price}",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xffF2F2F2)
                                      ),
                                    ),
                                    Text("per pax",
                                      style: TextStyle(
                                          fontSize: 12,
                                        color: Color(0xffF2F2F2)
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(activity.type,
                              style: TextStyle(
                                  color: Color(0xffF2F2F2)
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            //_buildRatingStars(activity.rating),
                            IconTheme(
                              data: IconThemeData(
                                color: Colors.amber,
                                size: 20,
                              ),
                              child: RatingStars(value: 5),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.tealAccent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(activity.startTimes[0]),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.tealAccent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(activity.startTimes[1]),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 15,
                      bottom: 15,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black26,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 8
                            )
                          ]
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              image: AssetImage(activity.imageUrl),
                            width: 110,
                            fit: BoxFit.cover,
                          ),

                        ),
                      ),
                    )
                  ],
                );
                }
            ),
          )
        ],
      ),
    );
  }
}
