
import 'package:first_projrct/widget/build_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar:AppBar(
        title:FlutterLogo(
          size: 25.0,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed:(){},
          icon:const Icon(
            Icons.arrow_back,
          ),
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed:(){},
            icon:const Icon(
              Icons.menu,),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                alignment: const Alignment(0.0, -0.40),
                height: screenHeight!*0.2,
                color: Colors.white,
                child: Text(
                  "Get coaching",
                  style: TextStyle(fontFamily: "Montserrat", fontSize: screenWidth!*0.05,),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 2.0,
                          color: Colors.grey
                      ),
                    ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(
                              25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            "You Have",
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Quicksand",
                              fontSize: screenHeight!*0.022,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(
                              25.0, 40.0, 5.0, 25.0),
                          child: Text(
                            "206",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Quicksand",
                              fontSize: screenHeight!*0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: screenWidth!*0.35,
                      height: screenHeight!*0.06,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100]?.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          "By more",
                          style: TextStyle(
                            color: Colors.green,
                            fontFamily: "Quicksand",
                            fontSize: screenHeight!*0.028,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My COACHES",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Quicksand",
                    fontSize: screenHeight!*0.021,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "VIEW PAST SESSION",
                  style: TextStyle(
                    color: Colors.green,
                    fontFamily: "Quicksand",
                    fontSize: screenHeight!*0.021,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              BuildCard(name: 'Tom',status:'Away',cardIndex:1,screenWidth:screenWidth!*0.4,screenHeight:screenHeight!*0.25,),
              BuildCard(name: 'Tom',status:'Available',cardIndex: 2,screenWidth:screenWidth!*0.4,screenHeight:screenHeight!*0.25,),
              BuildCard(name: 'Tom',status:'Available',cardIndex: 3,screenWidth:screenWidth!*0.4,screenHeight:screenHeight!*0.25,),
              BuildCard(name: 'Tom',status:'Away',cardIndex:4,screenWidth:screenWidth!*0.4,screenHeight:screenHeight!*0.25,),
              BuildCard(name: 'Tom',status:'Away',cardIndex:5,screenWidth:screenWidth!*0.4,screenHeight:screenHeight!*0.25,),
              BuildCard(name: 'Tom',status:'Available',cardIndex: 6,screenWidth:screenWidth!*0.4,screenHeight:screenHeight!*0.25,),
            ],

          )
        ],
      ),
    );
  }

}
