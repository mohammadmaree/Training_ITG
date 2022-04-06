import 'package:first_projrct/plants/pages/plant_detail_page.dart';
import 'package:first_projrct/plants/widget/build_plants_Icon.dart';
import 'package:flutter/material.dart';

class BuildGetPlantCard extends StatelessWidget {
  final String imgPath;
  final String price;
  final String plantType;
  final String plantName;
  final double screenWidth;
  final double screenHeight;

  BuildGetPlantCard({
    required this.imgPath,
    required this.price,
    required this.plantType,
    required this.plantName,
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: screenHeight*0.55,
          width: screenWidth*0.62,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth*0.04),
                color: const Color(0xFF399D63)),
            height: screenHeight*0.35,
            width:screenWidth*0.62,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(height: screenHeight*0.015),
                        Text(
                          'FROM',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenWidth*0.035,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF8AC7A4)),
                        ),
                        Text(
                          '\$' + price,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenWidth*0.055,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(width: screenWidth*0.02)
                  ],
                ),
                Image(
                  image: AssetImage(imgPath),
                  height: screenHeight*0.25,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: screenWidth*0.075),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          plantType,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenWidth*0.035,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF8AC7A4)),
                        ),
                        Text(
                          plantName,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize:screenWidth*0.05,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: screenHeight*0.015),
                Row(
                  children: <Widget>[
                    SizedBox(width: screenWidth*0.075),
                    BuildPlantIcon(
                      icon:Icons.wb_sunny,
                      color:0xFF399D63,
                      borderColor:0xFF8AC7A4,
                      screenHeight:screenHeight,
                      screenWidth:screenWidth,
                    ),
                    SizedBox(width: screenWidth*0.04),
                    BuildPlantIcon(
                      icon:Icons.branding_watermark,
                      color:0xFF399D63,
                      borderColor:0xFF8AC7A4,
                      screenHeight:screenHeight,
                      screenWidth:screenWidth,
                    ),
                    SizedBox(width: screenWidth*0.04),
                    BuildPlantIcon(
                      icon:Icons.hot_tub,
                      color:0xFF399D63,
                      borderColor:0xFF8AC7A4,
                      screenHeight:screenHeight,
                      screenWidth:screenWidth,
                    ),
                    SizedBox(width: screenWidth*0.04),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PlantDetailPage(
                              price: price,
                              plantName: plantName,
                              plantType: plantType,
                            )
                        ));
                      },
                      child: Container(
                        height:screenWidth*0.085,
                        width: screenWidth*0.085,
                        decoration: BoxDecoration(color: Color(0xFF399D63)),
                        child: Icon(Icons.help_outline,
                            color: Colors.white.withOpacity(0.4), size: screenWidth*0.06),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth*0.23, top:screenHeight*0.42),
          child: Container(
            height: screenWidth*0.15,
            width: screenWidth*0.15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0), color: Colors.black),
            child:
            Center(child: Icon(Icons.shopping_cart, color: Colors.white)),
          ),
        )
      ],
    );
  }
}
