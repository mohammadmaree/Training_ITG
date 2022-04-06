
import 'package:first_projrct/plants/widget/build_plant_details_background.dart';
import 'package:first_projrct/plants/widget/build_plant_details_information.dart';
import 'package:flutter/material.dart';

class PlantDetailPage extends StatelessWidget {
  final String price;
  final String plantType;
  final String plantName;
  double? screenWidth;
  double? screenHeight;

  PlantDetailPage({
    required this.price,
    required this.plantType,
    required this.plantName,
  });
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Material(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              BuildPlantDetailsBackground(
                screenHeight:screenHeight!,
                screenWidth:screenWidth!,
                color:0xFF399D63,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    size:screenWidth!*0.075,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top:screenHeight!*0.01, left: screenWidth! - 60.0
                ),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: const Color(0xFF4DA774),
                  mini: true,
                  elevation: 0.0,
                  child: Icon(Icons.shopping_cart,
                      color: Colors.white, size:screenWidth!*0.05,),
                ),
              ),
              Positioned(
                top:screenHeight!*0.01,
                left: screenWidth! - 30.0,
                child: Container(
                  height:screenWidth!*0.05,
                  width: screenWidth!*0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth!*0.05),
                      color: Colors.white
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(color: Color(0xFF399D63),
                          fontFamily: 'Montserrat',
                        fontSize: screenWidth!*0.035
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'INDOOR',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: screenWidth!*0.03,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF8AC7A4)),
                    ),
                    Text(
                      plantName,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: screenWidth!*0.12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(height: screenHeight!*0.01,),
                    Text(
                      'FROM',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: screenWidth!*0.03,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF8AC7A4)),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: screenWidth!*0.08,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    SizedBox(height: screenHeight!*0.01,),
                    Text(
                      'SIZES',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: screenWidth!*0.03,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF8AC7A4)),
                    ),
                    Text(
                      'Small',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: screenWidth!*0.08,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    SizedBox(height: screenHeight!*0.01,),
                    Container(
                      height: screenWidth!*0.15,
                      width: screenWidth!*0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(screenWidth!*0.15,),
                          color: Colors.black),
                      child: Center(
                        child: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          size: screenWidth!*0.075,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: (screenHeight! / 2) - 185.0,
                left: (screenWidth! / 2) - 80.0,
                child: Image(
                  image: AssetImage('assets/images/whiteplant.png'),
                  fit: BoxFit.cover,
                  height: screenHeight!*0.4,
                ),
              ),
              BuildPlantDetailsInformation(
                screenWidth:screenWidth!,
                screenHeight:screenHeight!,
              ),
            ],
          )
        ],
      ),
    );
  }
}