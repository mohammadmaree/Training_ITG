import 'package:first_projrct/widget/build_list_item.dart';
import 'package:first_projrct/widget/build_slider.dart';
import 'package:first_projrct/widget/selected_photo.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({Key? key}) : super(key: key);

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  double? screenWidth;
  double? screenHeight;

  List<String> photos = [
    'assets/images/burger1.jpg',
    'assets/images/burger2.jpg',
    'assets/images/burger3.jpg',
    'assets/images/burger4.jpg'
  ];


  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuildSlider(photos: photos),
              SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'OPEN NOW UNTIL 7PM',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      'The Cinnamon Snail',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 27.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Text(
                          '17th st & Union Sq East',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5.0),
                        Icon(Icons.location_on),
                        SizedBox(width: 5.0),
                        Text(
                          '400ft Away',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 7.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.wifi, color: Colors.green),
                        SizedBox(width: 4.0),
                        Text(
                          'Location confirmed by 3 users today',
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'FEATURED ITEMS',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              buildListItem(picture:photos[0],),
              SizedBox(height: 10.0),
              buildListItem(picture:photos[1]),
              SizedBox(height: 10.0),
              buildListItem(picture:photos[2]),
              SizedBox(height: 10.0),
              buildListItem(picture:photos[3]),
            ],
          ),
        ],
      ),
    );
  }
}

