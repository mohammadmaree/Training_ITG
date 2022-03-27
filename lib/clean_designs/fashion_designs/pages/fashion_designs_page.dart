
import 'package:first_projrct/clean_designs/fashion_designs/pages/fashion_designs_post_details_item_page.dart';
import 'package:first_projrct/clean_designs/fashion_designs/widget/build_fashion_designs_list_item.dart';
import 'package:first_projrct/clean_designs/fashion_designs/widget/build_fashion_designs_post.dart';
import 'package:flutter/material.dart';


class FashionDesignsPage extends StatefulWidget {

  @override
  State<FashionDesignsPage> createState() => _FashionDesignsPageState();
}

class _FashionDesignsPageState extends State<FashionDesignsPage> with SingleTickerProviderStateMixin{

  TabController? controller;
  double? screenWidth;
  double? screenHeight;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(vsync: this, length: 4);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller!.dispose();
    super.dispose();
  }
  List<String>postImages=[
    'assets/images/modelgrid1.jpeg',
    'assets/images/modelgrid2.jpeg',
    'assets/images/modelgrid3.jpeg'
  ];
  List<String>hashtags=[
    '# Louis vuitton',
    '# Chloe',
  ];

  List<String>modelImages=[
    'assets/images/model1.jpeg',
    'assets/images/model2.jpeg',
    'assets/images/model3.jpeg',
    'assets/images/model1.jpeg',
  ];
  List<String>modelLogo=[
    'assets/images/chanellogo.jpg',
    'assets/images/louisvuitton.jpg',
    'assets/images/chloelogo.png',
    'assets/images/chanellogo.jpg',
  ];

  int currentIndex = 0;
  List<bool>active=[
    true,false,false,false
  ];
  void changeBottomIndex(int index) {
    setState(() {
      active[0]= false;
      active[1]= false;
      active[2]= false;
      active[3]= false;
      currentIndex = index;
      active[index]= true;
    });
  }

  String personImage='assets/images/model1.jpeg';
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Discovery',
          style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontSize: screenWidth!*0.065,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
                Icons.camera,
              size: screenWidth!*0.065,
            ),
            color: Colors.grey,
            iconSize: screenWidth!*0.065,
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: screenHeight!*0.005, bottom: screenWidth!*0.02,),
        children: [
          Container(
            height: screenHeight!*0.15+screenWidth!*0.11,
            width: double.infinity,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(screenWidth!*0.035,),
              children: [
                BuildFashionDesignsListItem(
                    imageMain:modelImages[0],
                    logo:modelLogo[0],
                screenWidth:screenWidth!,
                screenHeight:screenHeight!,
                ),
                SizedBox(width: screenWidth!*0.08,),
                BuildFashionDesignsListItem(
                  imageMain:modelImages[1],
                  logo:modelLogo[1],
                  screenWidth:screenWidth!,
                  screenHeight:screenHeight!,
                ),
                SizedBox(width: screenWidth!*0.08,),
                BuildFashionDesignsListItem(
                  imageMain:modelImages[2],
                  logo:modelLogo[2],
                  screenWidth:screenWidth!,
                  screenHeight:screenHeight!,
                ),
                SizedBox(width: screenWidth!*0.08,),
                BuildFashionDesignsListItem(
                  imageMain:modelImages[3],
                  logo:modelLogo[3],
                  screenWidth:screenWidth!,
                  screenHeight:screenHeight!,
                ),
              ],
            ),
          ),
          BuildFashionDesignsPost(
              screenHeight:screenHeight!,
              screenWidth:screenWidth!,
              personImage: personImage,
              name: 'Daisy',
              time: '34 mins ago',
              description: 'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends',
              postImages: postImages,
              hashtags: hashtags,
              isFavourite:true ,
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          onTap: (index){
            changeBottomIndex(index);
          },
          tabs: <Widget>[
            Tab(icon: Icon(
                    Icons.more,
                    color: active[0]?Colors.black:Colors.grey,
                    size: screenWidth!*0.04,
                )
            ),
            Tab(icon: Icon(
                Icons.play_arrow,
                color:active[1]?Colors.black:Colors.grey,
                size: screenWidth!*0.04,
            ),),
            Tab(icon: Icon(
                Icons.navigation,
                color: active[2]?Colors.black:Colors.grey,
                size: screenWidth!*0.04,
            )),
            Tab(icon: Icon(
                Icons.supervised_user_circle,
                color: active[3]?Colors.black:Colors.grey,
                size: screenWidth!*0.04,
            )),
          ],
        ),
      ),
    );
  }
}
