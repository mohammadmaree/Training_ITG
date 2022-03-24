import 'package:first_projrct/gcoaching/widget/get_clipper.dart';
import 'package:flutter/material.dart';

class FurnitureProfilePage extends StatelessWidget {
  static String routeName = 'FurnitureProfilePageRouteName';
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
          child: Container(color: Color(0xFFFDD148).withOpacity(0.8)),
          clipper: GetClipper(),
        ),
        Positioned(
            width: screenWidth!,
            top: screenHeight!*0.05,
            child:Column(
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: screenWidth!*0.1,
                      fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                SizedBox(height: screenHeight!*0.1),
                Container(
                    width: screenWidth!*0.4,
                    height: screenWidth!*0.4,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFDD148),
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/engin.jpg',),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(screenWidth!*0.5)),
                        boxShadow: const [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ])),
                SizedBox(height: screenWidth!*0.15),
                Text(
                  'Engin Akyürek',
                  style: TextStyle(
                      fontSize: screenWidth!*0.08,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(height: screenHeight!*0.02),
                SizedBox(height: screenHeight!*0.06),
                Container(
                    height: screenHeight!*0.065,
                    width:screenWidth!*0.32,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: const Color(0xFFFDD148),
                      color: const Color(0xFFFDD148),
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Edit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth!*0.05,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ),
                    )),
                SizedBox(height: screenHeight!*0.02),
              ],
            )
        ),
      ],
    );
  }
}
