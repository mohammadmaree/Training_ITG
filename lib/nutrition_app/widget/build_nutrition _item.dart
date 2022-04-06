import 'package:first_projrct/nutrition_app/pages/nutrition_details_page.dart';
import 'package:flutter/material.dart';

class BuildNutritionItem extends StatelessWidget {
  final String imgPath;
  final String foodName;
  final String price;
  final double screenWidth;
  final double screenHeight;

  BuildNutritionItem({
    required this.imgPath,
    required this.foodName,
    required this.price,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NutritionDetailsPage(
                      heroTag: imgPath,
                      foodName: foodName,
                      foodPrice: price,
                    screenHeight: screenHeight,
                    screenWidth: screenWidth
                  )
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                        children: [
                          Hero(
                              tag: imgPath,
                              child: Image(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.cover,
                                  height: screenWidth*0.22,
                                  width:  screenWidth*0.22,
                              )
                          ),
                          SizedBox(width:screenWidth*0.04,),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(
                                    foodName,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: screenWidth*0.05,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                Text(
                                    price,
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: screenWidth*0.04,
                                        color: Colors.grey
                                    )
                                )
                              ]
                          )
                        ]
                    )
                ),
                IconButton(
                    icon: Icon(Icons.add,size: screenWidth*0.07,),
                    color: Colors.black,
                    onPressed: () {},
                  iconSize: screenWidth*0.07,
                )
              ],
            )
        ));
  }
}
