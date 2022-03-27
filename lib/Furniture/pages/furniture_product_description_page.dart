import 'package:first_projrct/Furniture/widget/furniture_product_description/build_furniture_product_description_app_bar.dart';
import 'package:first_projrct/Furniture/widget/furniture_product_description/build_furniture_product_description_colors.dart';
import 'package:first_projrct/Furniture/widget/furniture_product_description/build_furniture_product_description_details.dart';
import 'package:first_projrct/Furniture/widget/furniture_product_description/build_furniture_product_description_dialog.dart';
import 'package:first_projrct/Furniture/widget/furniture_product_description/build_furniture_product_description_materials.dart';
import 'package:first_projrct/Furniture/widget/furniture_product_description/build_furniture_selected_photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FurnitureProductDescriptionPage extends StatefulWidget {
  static String routeName = 'ProductDescriptionPageRouteName';

  @override
  State<FurnitureProductDescriptionPage> createState() => _FurnitureProductDescriptionPageState();
}

class _FurnitureProductDescriptionPageState extends State<FurnitureProductDescriptionPage> {

  double? screenWidth;
  double? screenHeight;

  int photoIndex = 0;

  List<String> photos = [
    'assets/images/ottoman.jpg',
    'assets/images/otto2.jpeg',
    'assets/images/otto3.jpg',
    'assets/images/otto4.jpg'
  ];

  List<IconData>icons=[Icons.time_to_leave,Icons.timer,Icons.monetization_on];
  List<String>titles=['x30%','x60%','x10%'];
  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(

                    height: screenHeight!*0.38,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(photos[photoIndex]),
                            fit: BoxFit.cover)),
                  ),
                  GestureDetector(
                    child: Container(
                      height: screenHeight!*0.38,
                      width: screenWidth!,
                      color: Colors.transparent,
                    ),
                    onTap: _nextImage,
                  ),
                  GestureDetector(
                    child: Container(
                      height: screenHeight!*0.38,
                      width: screenWidth!*0.5,
                      color: Colors.transparent,
                    ),
                    onTap: _previousImage,
                  ),
                  BuildFurnitureProductDescriptionAppBar(
                    screenHeight:screenHeight!,
                    screenWidth:screenWidth!,
                    icon: Icons.arrow_back,
                    favorite:Icons.favorite,
                    favoriteBorder:Icons.favorite_border,
                  ),
                  Positioned(
                      top: screenHeight!*0.355,
                      left: screenWidth!*0.41,
                      child: Row(
                        children: <Widget>[
                          BuildFurnitureSelectedPhoto(
                            numberOfDots: photos.length,
                            photoIndex: photoIndex,
                            screenWidth:screenWidth!*0.03,
                         )
                        ],
                      )
                  ),
                ],
              ),
              SizedBox(height: screenHeight!*0.015),
              BuildFurnitureProductDescriptionDetails(
                screenHeight:screenHeight!,
                screenWidth:screenWidth!,
                alcideNumber: '2323X',
                title: 'Finn Navian-Sofa',
                price: '248',
                description:'Scandinavian small size double sofa / imported full leather /Dale Italia oil wax leather black',
              ),
              SizedBox(height: screenHeight!*0.05),
              Padding(
                padding: EdgeInsets.only(left: screenWidth!*0.04),
                child: Text(
                  'COLOR',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize:screenWidth!*0.065,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: screenHeight!*0.03),
              BuildFurnitureProductDescriptionColors(
                screenHeight:screenHeight!,
                screenWidth:screenWidth!,
              ),
              SizedBox(height: screenHeight!*0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth!*0.04),
                child: Text(
                  'MATERIAL',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: screenWidth!*0.065,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: screenHeight!*0.03),
              BuildFurnitureProductDescriptionMaterials(
                screenWidth:screenWidth!,
                screenHeight:screenHeight!,
                icons: icons,
                titles: titles,
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Material(
          elevation: 7.0,
          color: Colors.white,
          child: Container(
              height: screenHeight!*0.07,
              width: screenWidth!,
              color: Colors.white,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        color: Colors.white,
                        child: Icon(
                          Icons.shopping_cart,
                          size: screenWidth!*0.075,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        color: Colors.white,
                        child: Icon(
                          Icons.account_box,
                          size: screenWidth!*0.075,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        BuildFurnitureProductDescriptionDialog(
                            screenWidth:screenWidth!,
                            screenHeight:screenHeight!,
                            text:'Sure to add it to a cart?',
                            context: context,
                          color: 0xFFFDD148,
                        );
                      },
                      child: Container(
                          color: const Color(0xFFFEDD59),
                          width:screenWidth!*0.66,
                          child: Center(
                              child: Text(
                                'Add to Cart',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: screenWidth!*0.05,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          )
                      ),
                    )
                  ]
              )
          )
      ),
    );
  }

}


