import 'package:flutter/material.dart';

class RentalServicePage extends StatelessWidget {
  static String routeName = 'RentalServicePageRouteName';
  double? screenWidth;
  double? screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
        body: Container(
          height: screenHeight!,
          width: screenWidth!,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFBC044), Color(0xFFD8992B)])),
          padding: EdgeInsets.only(left: screenWidth!*0.05, right: screenWidth!*0.05),
          child: Column(
            children: <Widget>[
              SizedBox(height:screenHeight!*0.02),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  iconSize: screenWidth!*0.075,
                  icon: Icon(
                      Icons.close,
                    size:screenWidth!*0.075,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Text(
                'Check Vehicle Availability',
                style: TextStyle(
                    fontSize:screenWidth!*0.125,
                    color: Colors.white,
                    fontFamily: 'Cabin',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height:screenHeight!*0.01),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter your zip code',
                    hintStyle: TextStyle(color: Colors.white,fontSize: screenWidth!*0.05,),
                    prefixIcon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      size: screenWidth!*0.06,
                    ),
                    border: InputBorder.none),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height:screenHeight!*0.01),
              Text(
                'We want to ensure the vehicle is available in your area for delivery',
                style: TextStyle(
                  fontSize: screenWidth!*0.05,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height:screenHeight!*0.01),
              Image.asset('assets/images/porsche.png', fit: BoxFit.cover, height: 200.0),
              Container(
                height: 0.5,
                color: Colors.white,
              ),
              SizedBox(height:screenHeight!*0.01),
              Text(
                'Been here before ? Already have an eleanor account ?',
                style: TextStyle(
                  fontSize: screenWidth!*0.05,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height:screenHeight!*0.01),
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize:screenWidth!*0.05,
                          color: Colors.white,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  SizedBox(height:screenHeight!*0.01),
                  IconButton(
                    iconSize: screenWidth!*0.05,
                    icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      size: screenWidth!*0.05,
                    ),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ));
  }
}
