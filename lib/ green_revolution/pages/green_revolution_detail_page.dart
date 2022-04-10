import 'package:flutter/material.dart';

class GreenRevolutionDetailPage extends StatelessWidget {
  final String heroTag;
  final String foodName;
  final String foodPrice;
  final double screenHeight;
  final double screenWidth;

  GreenRevolutionDetailPage({
    required this.heroTag,
    required this.foodName,
    required this.foodPrice,
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  height: screenHeight*0.5
              ),
              Container(
                height: screenHeight*0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/green.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(screenHeight*0.14,),
                        bottomRight: Radius.circular(screenHeight*0.14,))),
              ),
              Positioned(
                  top: 50.0,
                  left: (screenWidth / 2) - 125,
                  child: Hero(
                      tag: heroTag,
                      child: Container(
                        height: screenWidth*0.65,
                        width:screenWidth*0.65,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(heroTag),
                                fit: BoxFit.cover
                            )
                        ),
                      )
                  )
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios,size: screenWidth*0.07,),
                  color: Colors.black45,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.more_horiz ,size: screenWidth*0.07,),
                  color: Colors.black45,
                  onPressed: () {},
                ),
              )
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(left: screenWidth*0.05, right:screenWidth*0.05,top: screenHeight*0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(foodName,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: screenWidth*0.075,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,

                    )
                ),
                SizedBox(height: screenHeight*0.01),
                Row(
                  children: <Widget>[
                    Text(
                      '4.9',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.grey,
                          fontSize:screenWidth*0.05),
                    ),
                    SizedBox(width: screenWidth*0.02),
                    Icon(Icons.star,
                        color: Colors.green, size: screenWidth*0.05),
                    Icon(Icons.star,
                        color: Colors.green, size: screenWidth*0.05),
                    Icon(Icons.star,
                        color: Colors.green, size: screenWidth*0.05),
                    Icon(Icons.star,
                        color: Colors.green, size: screenWidth*0.05),
                    Icon(Icons.star,
                        color: Colors.green, size: screenWidth*0.05),
                  ],
                ),
                SizedBox(height: screenHeight*0.01),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        foodPrice,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: screenWidth*0.05),
                      ),
                      Container(
                          width: screenWidth*0.42,
                          height: screenHeight*0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Color(0xFFEDFEE5)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.remove_circle_outline, color: Color(0xFF5CB238),size: screenWidth*0.07),
                                onPressed: () {},
                              ),
                              Text('3',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: screenWidth*0.05,
                                    color: Color(0xFF5CB238)
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.add_circle, color: Color(0xFF5AC035),size: screenWidth*0.07),
                                onPressed: () {},
                              )
                            ],
                          )
                      )
                    ]
                ),
                SizedBox(height: screenHeight*0.01),
                Text('About the food',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: screenWidth*0.05,
                        color: Colors.black
                    )
                ),
                SizedBox(height: screenHeight*0.01),
                Container(
                  child: Text('This light home-cooked food is low salt and low oil with balanced nutrition, selected from high-quality ingredients. This delicious food maybe your best healthy choice.',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize:screenWidth*0.045,
                        color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(height: screenHeight*0.01),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xFF5AC035),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Total',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: screenWidth*0.05,
                            color: Colors.white,

                          ),
                        ),
                        SizedBox(width: screenWidth*0.04,),
                        Text('\$84.00',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenWidth*0.05,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
