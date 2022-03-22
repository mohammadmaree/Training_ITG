import 'package:flutter/material.dart';
class BuildFurnitureItemCard extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String image;
  final String title;
  final bool isFavorite;
  BuildFurnitureItemCard({
    required this.screenHeight,
    required this.screenWidth,
    required this.image,
    required this.title,
    required this.isFavorite,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth*0.03, right: screenWidth*0.02, top: screenHeight*0.02),
      child: Container(
        height: screenHeight*0.7,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              width: screenWidth*0.44,
              height: screenHeight*0.7,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
            ),
            SizedBox(width: screenWidth*0.01),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: screenWidth*0.055,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: screenWidth*0.1,),
                    Material(
                      elevation: isFavorite ? 0.0 : 2.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        height: screenWidth*0.12,
                        width: screenWidth*0.12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: isFavorite
                                ? Colors.grey.withOpacity(0.2)
                                : Colors.white),
                        child: Center(
                          child: isFavorite
                              ? Icon(
                              Icons.favorite_border,
                            size: screenWidth*0.08,
                          )
                              : Icon(
                              Icons.favorite, color: Colors.red,
                            size: screenWidth*0.08,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: screenHeight*0.02),
                Container(
                  width: screenWidth*0.5,
                  child: Text(
                    'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: screenWidth*0.035),
                  ),
                ),
                SizedBox(height: screenHeight*0.02),
                Row(
                  children: <Widget>[
                    SizedBox(width: screenWidth*0.1),
                    Container(
                      height: screenHeight*0.18,
                      width: screenWidth*0.14,
                      color: Color(0xFFF9C335),
                      child: Center(
                        child: Text(
                          '\$248',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth*0.045,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight*0.18,
                      width: screenWidth*0.28,
                      color: Color(0xFFFEDD59),
                      child: Center(
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth*0.045,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
