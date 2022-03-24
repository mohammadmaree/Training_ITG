import 'package:first_projrct/Furniture/pages/furniture_product_description_page.dart';
import 'package:flutter/material.dart';
class BuildFurnitureItemCard extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;
  final String image;
  final String title;
//  final bool isFavorite;
  BuildFurnitureItemCard({
    required this.screenHeight,
    required this.screenWidth,
    required this.image,
    required this.title,
   // required this.isFavorite,
  });

  @override
  State<BuildFurnitureItemCard> createState() => _BuildFurnitureItemCardState();
}

class _BuildFurnitureItemCardState extends State<BuildFurnitureItemCard> {
  bool isFavorite = true;
  changeFavorite()
  {
    setState(() {
      isFavorite=!isFavorite;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: widget.screenWidth*0.03, right: widget.screenWidth*0.02, top: widget.screenHeight*0.02),
      child: Container(
        height: widget.screenHeight*0.7,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              width: widget.screenWidth*0.44,
              height: widget.screenHeight*0.7,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.image), fit: BoxFit.cover)),
            ),
            SizedBox(width: widget.screenWidth*0.01),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: widget.screenWidth*0.055,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: widget.screenWidth*0.1,),
                    GestureDetector(
                      onTap: (){
                        changeFavorite();
                      },
                      child: Material(
                        elevation: isFavorite ? 0.0 : 2.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          height: widget.screenWidth*0.12,
                          width: widget.screenWidth*0.12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: isFavorite
                                  ? Colors.grey.withOpacity(0.2)
                                  : Colors.white),
                          child: Center(
                            child: isFavorite
                                ? Icon(
                                Icons.favorite_border,
                              size: widget.screenWidth*0.08,
                            )
                                : Icon(
                                Icons.favorite, color: Colors.red,
                              size: widget.screenWidth*0.08,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: widget.screenHeight*0.02),
                Container(
                  width: widget.screenWidth*0.5,
                  child: Text(
                    'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: widget.screenWidth*0.035),
                  ),
                ),
                SizedBox(height: widget.screenHeight*0.02),
                Row(
                  children: <Widget>[
                    SizedBox(width: widget.screenWidth*0.1),
                    Container(
                      height: widget.screenHeight*0.18,
                      width: widget.screenWidth*0.14,
                      color: Color(0xFFF9C335),
                      child: Center(
                        child: Text(
                          '\$248',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: widget.screenWidth*0.045,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FurnitureProductDescriptionPage()));
                        //Navigator.of(context).pushNamed(ProductDescriptionPage.routeName);
                      },
                      child: Container(
                        height: widget.screenHeight*0.18,
                        width: widget.screenWidth*0.28,
                        color: Color(0xFFFEDD59),
                        child: Center(
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: widget.screenWidth*0.045,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
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
