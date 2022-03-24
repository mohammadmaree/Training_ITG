import 'package:first_projrct/Furniture/widget/build_furniture_background.dart';
import 'package:first_projrct/Furniture/widget/furniture_shopping/build_furniture_shopping_item_card.dart';
import 'package:first_projrct/Furniture/widget/furniture_shopping/build_furniture_shopping_pay_card.dart';
import 'package:flutter/material.dart';

class FurnitureShoppingCartPage extends StatefulWidget {

  @override
  State<FurnitureShoppingCartPage> createState() => _FurnitureShoppingCartPageState();
}

class _FurnitureShoppingCartPageState extends State<FurnitureShoppingCartPage> {
  double? screenWidth;
  double? screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return  ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    BuildFurnitureBackground(
                      screenWidth:screenWidth!,
                      screenHeight:screenHeight!,
                      color:0xFFFDD148,
                    ),
                    Positioned(
                        top: screenHeight!*0.075,
                        left: screenWidth!*0.04,
                        child: Text(
                          'Shopping Cart',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenWidth!*0.08,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                      top: screenHeight!*0.2,
                      child: Column(
                        children: <Widget>[
                          BuildFurnitureShoppingItemCard(
                            screenHeight:screenHeight! ,
                            screenWidth:screenWidth!,
                            itemName:'Finn Navian-Sofa',
                            color:'gray',
                            price:248,
                            available: true,
                            imgPath:'assets/images/otto5.jpg',
                            index: 0,
                          ),
                          BuildFurnitureShoppingItemCard(
                            screenHeight:screenHeight!,
                            screenWidth: screenWidth!,
                            itemName:'Finn another Chair',
                            color:'gray',
                            price:190,
                            available: true,
                            imgPath:'assets/images/anotherchair.jpg',
                            index: 1,
                          ),
                          BuildFurnitureShoppingItemCard(
                            screenHeight:screenHeight!,
                            screenWidth: screenWidth!,
                            itemName:'Finn Chair',
                            color:'gray',
                            price:210,
                            available: false,
                            imgPath:'assets/images/chair.jpg',
                            index: 2,
                          ),
                        ],
                      ),
                    ),
                    BuildFurnitureShoppingPayCard(
                      screenWidth:screenWidth!,
                      screenHeight:screenHeight!,
                      text:'Pay',
                      totalPrice:'Total: \$' /*+totalAmount.toString()*/,
                    ),
                  ],
                )
              ],
            ),
          ],
        )
      ],
    );
  }

}
