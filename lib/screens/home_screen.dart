import 'package:flutter/material.dart';
import 'package:traveluidesign/widgets/destination_carousel.dart';
import 'package:traveluidesign/widgets/hotel_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  List<IconData> _icons = [

    Icons.airplanemode_active,
    Icons.card_travel,
    Icons.directions_walk,
    Icons.directions_bike,
  ];
  Widget _buildIcon(int index) {

    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Colors.tealAccent : Color(0xff006760),
          borderRadius: BorderRadius.circular(30),

        ),
        child: Icon(_icons[index], size: 25, color: _selectedIndex == index ? Color(0xff006760) : Colors.white,),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff003733),
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 20),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 80),
                child: Text(
                  "What you Would like to Find?",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffF2F2F2)

                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _icons.asMap().entries.map((e) => _buildIcon(e.key),).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              DestinationCarousel(),
              SizedBox(
                height: 20,
              ),
              Hotel_Carousel(),
            ],
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff006760),
        selectedItemColor: Colors.tealAccent,
          unselectedItemColor: Color(0xffF2F2F2),
          currentIndex: _currentTab,
        onTap: (int value){
            setState(() {
              _currentTab = value;
            });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search,size: 25,),title: SizedBox.shrink()),
          BottomNavigationBarItem(icon: Icon(Icons.map,size: 25,),title: SizedBox.shrink()),
          BottomNavigationBarItem(icon: CircleAvatar(radius: 15,backgroundImage: AssetImage("assets/user/adnan.jpg"),),title: SizedBox.shrink()),
        ],
      ),
    );
  }
}
