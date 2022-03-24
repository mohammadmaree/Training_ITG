import 'package:flutter/material.dart';

void BuildFurnitureProductDescriptionDialog({
  required double screenHeight,
  required double screenWidth,
  required BuildContext context,
  Function? function,
  required String text,
  required int color,
}){
  showDialog(
      barrierDismissible: false,
      context: context,
      builder:(context) =>  AlertDialog(
        title: Text(
          text,
          style: TextStyle(
              color:Color(color),
              fontSize:screenWidth*0.05,
              fontWeight: FontWeight.bold
          ),
        ),
        content: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          height: screenHeight*0.08,
          width: screenWidth*0.4,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                      height: screenHeight*0.07,
                      width:screenWidth*0.22,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor:Colors.grey,
                        color: Colors.grey,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'Yes',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenWidth*0.055,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                      height: screenHeight*0.07,
                      width:screenWidth*0.22,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.grey,
                        color: Colors.grey,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'No',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenWidth*0.055,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
  );
}
