import 'package:first_projrct/cakes_and_pastries/widget/build_cakes_background.dart';
import 'package:first_projrct/cakes_and_pastries/widget/build_cakes_food_list.dart';
import 'package:first_projrct/cakes_and_pastries/widget/build_cakes_list_item.dart';
import 'package:first_projrct/cakes_and_pastries/widget/build_cakes_search.dart';
import 'package:flutter/material.dart';

class CakesAndPastriesPage extends StatefulWidget {
  @override
  State<CakesAndPastriesPage> createState() => _CakesAndPastriesPageState();
}

class _CakesAndPastriesPageState extends State<CakesAndPastriesPage>with SingleTickerProviderStateMixin{
  double? screenWidth;
  double? screenHeight;
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync:  this, length: 4);
  }



  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height-MediaQuery.of(context).padding.top;
    List<Tab>tabs=[
      Tab(
        child: Text('DESSERT',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: screenWidth!*0.045,),
        ),
      ),
      Tab(
        child: Text('PIZZA',
          style: TextStyle(fontFamily: 'Montserrat', fontSize:screenWidth!*0.045,),
        ),
      ),
      Tab(
        child: Text('BARBECUE',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: screenWidth!*0.045,),
        ),
      ),
      Tab(
        child: Text(
          'DRINKS',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: screenWidth!*0.045,),
        ),
      )
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFF9EFEB),
      body: ListView(
        children: [
          Stack(
            children: [
              BuildCakesBackground(
                mainColor:0xFFFD7465,
                secondColor:0xFFFE8A7E,
                screenWidth:screenWidth!,
                screenHeight:screenHeight!,
                text1: 'Good Afternoon!',
                text2: 'Choose your favorite!',
              ),
              BuildCakesSearch(
                hintText:'Search for your favorite',
                screenHeight:screenHeight!,
                screenWidth:screenWidth!,
              ),
            ],
          ),
          TabBar(
            controller:  tabController,
            indicatorColor: const Color(0xFFFE8A7E),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 4.0,
            isScrollable: true,
            labelColor: const Color(0xFF440206),
            unselectedLabelColor: Color(0xFF440206),
            tabs:tabs,
          ),
          SizedBox(height: screenHeight!*0.012),
          Container(
            height: screenHeight! - 450.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                BuildCakesFoodList(
                  screenWidth:screenWidth!,
                  screenHeight:screenHeight!,
                ),
                BuildCakesFoodList(
                  screenWidth:screenWidth!,
                  screenHeight:screenHeight!,
                ),
                BuildCakesFoodList(
                  screenWidth:screenWidth!,
                  screenHeight:screenHeight!,
                ),
                BuildCakesFoodList(
                  screenWidth:screenWidth!,
                  screenHeight:screenHeight!,
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight!*0.012),
          Padding(
            padding: EdgeInsets.only(left:screenWidth!*0.05),
            child: Text(
              'RECOMMEND',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize:screenWidth!*0.04,
              ),
            ),
          ),
          BuildCakesListItem(
              imgPath: 'assets/images/steak.png',
              foodName:'Chocolate lemon cup cake',
              desc:'The sour and sweetness of the lemon neutralizes the sweetness of the cream',
              price: '\$18.0',
              likes:134,
              calCount:2412,
              serving:'2-3per',
              screenWidth:screenWidth!,
              screenHeight:screenHeight!,
          ),
          SizedBox(height: 10.0),
          BuildCakesListItem(
            imgPath: 'assets/images/steak.png',
            foodName:'Strawberry cupcake',
            desc:'Rich in taste, dense in taste, with a bit of bitterness in chocolate, it is a great...',
            price: '\$18.0',
            likes:134,
            calCount:2412,
            serving:'2-3per',
            screenWidth:screenWidth!,
            screenHeight:screenHeight!,
          ),
          SizedBox(height: 20.0)
        ],
      ),
    );
  }
}
