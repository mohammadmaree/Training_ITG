import 'package:first_projrct/clean_designs/minimal/widget/build_minimal_first.dart';
import 'package:first_projrct/clean_designs/minimal/widget/build_minimal_info.dart';
import 'package:first_projrct/clean_designs/minimal/widget/build_minimal_list_item.dart';
import 'package:first_projrct/clean_designs/minimal/widget/build_minimal_second.dart';
import 'package:flutter/material.dart';

/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////error in response///////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////

class MinimalPage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;

  List<String>images=[
    'assets/images/engin.jpg',
    'assets/images/hugh.jpg',
    'assets/images/johnnydepp.jpg',
    'assets/images/tomcruise.jpg'
  ];
  List<String>names=[
    'Chris',
    'Hugh',
    'Depp',
    'Tom'
  ];
  List<String>firstImages=[
    'assets/images/cone.jpeg',
    'assets/images/letter.jpeg',
    'assets/images/engin.jpg',
  ];
  List<String>secondImages=[
    'assets/images/window.jpeg',
    'assets/images/cactus.jpeg',
    'assets/images/tomcruise.jpg',
  ];
  String text ='I like the way to place items to show more...';
  String time='10:51PM';
  String name='Mona Hall';

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'EXPLORE',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: screenWidth!*0.065,
              color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
              Icons.menu,
            size: screenWidth!*0.06,
          ),
          color: Colors.black,
          iconSize: screenWidth!*0.06,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
                Icons.search,
              size: screenWidth!*0.06,
            ),
            color: Colors.black,
            iconSize:screenWidth!*0.06,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: screenHeight!*0.02, bottom: screenHeight!*0.02),
        children: [
          Container(
            height: screenHeight!*0.225,
            width: double.infinity,
            child: ListView(
              shrinkWrap: false,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(screenHeight!*0.01),
              children: [
                Column(
                  children: <Widget>[
                    Container(
                        height: screenWidth!*0.25,
                        width: screenWidth!*0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(screenWidth!*0.25,),
                            color: Colors.orange),
                        child: IconButton(
                          icon: Icon(
                              Icons.add,
                            size: screenWidth!*0.1,
                          ),
                          color: Colors.white,
                          iconSize: screenWidth!*0.1,
                          onPressed: () {},
                        )),
                    SizedBox(height:screenHeight!*0.015),
                    Text('Add To',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: screenWidth!*0.05,
                            fontWeight: FontWeight.w600))
                  ],
                ),
                SizedBox(width:screenWidth!*0.1,),
                BuildMinimalListItem(
                    image: images[0],
                    name:names[0],
                    available:true,
                    screenHeight:screenHeight!,
                    screenWidth: screenWidth!
                ),
                SizedBox(width: 25.0),
                BuildMinimalListItem(
                    image:images[1],
                    name:names[1],
                    available:false,
                    screenHeight:screenHeight!,
                    screenWidth: screenWidth!
                ),
                SizedBox(width: 25.0),
                BuildMinimalListItem(
                    image: images[2],
                    name:names[2],
                    available:false,
                    screenHeight:screenHeight!,
                    screenWidth: screenWidth!
                ),
                SizedBox(width: 25.0),
                BuildMinimalListItem(
                    image: images[3],
                    name:names[3],
                    available:false,
                    screenHeight:screenHeight!,
                    screenWidth: screenWidth!
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          BuildMinimalFirst(
              image1:firstImages[0],
              image2: firstImages[1],
              avatarImage:firstImages[2],
              screenWidth:screenWidth!,
              screenHeight:screenHeight!,
          ),
          SizedBox(height: 10.0),
          BuildMinimalSecond(
              image1:secondImages[0],
              image2: secondImages[1],
              avatarImage: secondImages[2],
              screenWidth:screenWidth!,
              screenHeight:screenHeight!,
          ),
          SizedBox(height: 10.0),
          BuildMinimalInfo(
            screenWidth:screenWidth!,
            screenHeight:screenHeight!,
            time: time,
            name: name,
            text: text,
          ),
          SizedBox(height: 15.0),
          BuildMinimalFirst(
            image1:firstImages[0],
            image2: firstImages[1],
            avatarImage:firstImages[2],
            screenWidth:screenWidth!,
            screenHeight:screenHeight!,
          ),
          SizedBox(height: 10.0),
          BuildMinimalSecond(
            image1:secondImages[0],
            image2: secondImages[1],
            avatarImage: secondImages[2],
            screenWidth:screenWidth!,
            screenHeight:screenHeight!,
          ),
          BuildMinimalInfo(
            screenWidth:screenWidth!,
            screenHeight:screenHeight!,
            time: time,
            name: name,
            text: text,
          ),
          SizedBox(height: 15.0),
          BuildMinimalFirst(
            image1:firstImages[0],
            image2: firstImages[1],
            avatarImage:firstImages[2],
            screenWidth:screenWidth!,
            screenHeight:screenHeight!,
          ),
          SizedBox(height: 10.0),
          BuildMinimalSecond(
            image1:secondImages[0],
            image2: secondImages[1],
            avatarImage: secondImages[2],
            screenWidth:screenWidth!,
            screenHeight:screenHeight!,
          ),
          SizedBox(height: 10.0),
          BuildMinimalInfo(
            screenWidth:screenWidth!,
            screenHeight:screenHeight!,
            time: time,
            name: name,
            text: text,
          ),
        ],
      ),
    );
  }
}
