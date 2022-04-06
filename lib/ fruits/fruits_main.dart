import 'package:first_projrct/%20fruits/pages/fruits_page.dart';
import 'package:first_projrct/%20fruits/widget/build_fruits_app_bar.dart';
import 'package:first_projrct/%20fruits/widget/build_fruits_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
class  FruitsMain extends StatefulWidget {

  @override
  State<FruitsMain> createState() => _FruitsMainState();
}

class _FruitsMainState extends State<FruitsMain>with SingleTickerProviderStateMixin {
  double? screenWidth;
  double? screenHeight;
  TabController? tabController;
  String imageProfile='assets/images/picsix.jpeg';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.white,
      body:ListView(
        children: [
          BuildFruitsAppBar(
            screenHeight:screenHeight!,
            screenWidth:screenWidth!,
            imageProfile:imageProfile,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Fruits',
                    style: TextStyle(
                        fontSize:screenWidth!*0.09,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Bread',
                    style: TextStyle(
                        fontSize:screenWidth!*0.09,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Drink',
                    style: TextStyle(
                        fontSize:screenWidth!*0.09,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: screenHeight! - 200.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                FruitsPage(),
                FruitsPage(),
                FruitsPage(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BuildFruitsBottomNavigationBar(
        screenWidth:screenWidth!,
        screenHeight:screenHeight!,
        title:'Filters',
      )
    );
  }
}
