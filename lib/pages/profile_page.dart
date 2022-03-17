import 'package:first_projrct/widget/get_clipper.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Stack(
      children: [
        ClipPath(
          child: Container(color: Colors.black.withOpacity(0.8)),
          clipper: GetClipper(),
        ),
        Positioned(
          width: screenWidth!,
          top: MediaQuery.of(context).size.height / 5,
          child:Column(
            children: [
              Container(
                  width: screenWidth!*0.4,
                  height: screenWidth!*0.4,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(screenWidth!*0.5)),
                      boxShadow: const [
                        BoxShadow(blurRadius: 7.0, color: Colors.black)
                      ])),
              SizedBox(height: screenWidth!*0.15),
              Text(
                'Tom Cruise',
                style: TextStyle(
                    fontSize: screenWidth!*0.08,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
              ),
              SizedBox(height: screenHeight!*0.02),
              Text(
                'Subscribe guys',
                style: TextStyle(
                    fontSize: screenWidth!*0.045,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Montserrat'),
              ),
              SizedBox(height: screenHeight!*0.06),
              Container(
                  height: screenHeight!*0.065,
                  width:screenWidth!*0.32,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'Edit Name',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth!*0.045,
                              fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ),
                  )),
              SizedBox(height: screenHeight!*0.02),
              Container(
                  height: screenHeight!*0.065,
                  width:screenWidth!*0.32,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.redAccent,
                    color: Colors.red,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'Log outrr',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth!*0.045,
                              fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          )
        ),
      ],
    );
  }
}

