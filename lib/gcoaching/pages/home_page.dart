
import 'package:first_projrct/gcoaching/widget/build_card_home_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;

  List<String> status =['Away','Available','Available','Away','Away','Available'];
  List<int>cardIndex=[1,2,3,4,5,6];

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar:AppBar(
        title:FlutterLogo(
          size: screenWidth!*0.08,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed:(){},
          icon:Icon(
            Icons.arrow_back,
            size: screenWidth!*0.08,
          ),
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed:(){},
            icon:Icon(
              Icons.menu,
              size: screenWidth!*0.08,
            ),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
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
                              fontSize: screenWidth!*0.04,
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
                              fontSize: screenWidth!*0.1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: screenWidth!*0.35,
                      height: screenWidth!*0.12,
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
                            fontSize: screenWidth!*0.05,
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
                    fontSize: screenWidth!*0.032,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "VIEW PAST SESSION",
                  style: TextStyle(
                    color: Colors.green,
                    fontFamily: "Quicksand",
                    fontSize: screenWidth!*0.032,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          GridView.count(
            physics: BouncingScrollPhysics(),
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              // ListView.builder(
              //   shrinkWrap: true,
              //   physics: BouncingScrollPhysics(),
              //     itemBuilder: (context, index) => BuildCardHomePage(
              //       name: 'Tom',
              //       status:status[index],
              //       cardIndex:cardIndex[index],
              //       screenWidth:screenWidth!*0.4,
              //       screenHeight:screenHeight!*0.25,
              //     ),
              //   itemCount:status.length,
              // ),
              BuildCardHomePage(name: 'Tom',status:status[0],cardIndex:1,screenWidth:screenWidth!*0.4,screenHeight:screenHeight!*0.25,),
              BuildCardHomePage(name: 'Tom',status:status[1],cardIndex: 2,screenWidth:screenWidth!*0.4,screenHeight:screenHeight!*0.25,),
              BuildCardHomePage(name: 'Tom',status:status[2],cardIndex: 3,screenWidth:screenWidth!*0.4,screenHeight:screenHeight!*0.25,),
              BuildCardHomePage(name: 'Tom',status:status[3],cardIndex:4,screenWidth:screenWidth!*0.4,screenHeight:screenHeight!*0.25,),
              BuildCardHomePage(name: 'Tom',status:status[4],cardIndex:5,screenWidth:screenWidth!*0.4,screenHeight:screenHeight!*0.25,),
              BuildCardHomePage(name: 'Tom',status:status[5],cardIndex: 6,screenWidth:screenWidth!*0.4,screenHeight:screenHeight!*0.25,),
            ],

          )
        ],
      ),
    );

  }
}
