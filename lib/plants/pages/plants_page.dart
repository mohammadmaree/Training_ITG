import 'package:first_projrct/plants/widget/build_plant_list.dart';
import 'package:first_projrct/plants/widget/build_plants_app_bar.dart';
import 'package:flutter/material.dart';

class PlantsPage extends StatefulWidget {
  @override
  State<PlantsPage> createState() => _PlantsPageState();
}

class _PlantsPageState extends State<PlantsPage>with SingleTickerProviderStateMixin {
  double? screenWidth;
  double? screenHeight;
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
      - MediaQuery.of(context).padding.top;
    List<Tab>tabs=[
      Tab(
        child: Text(
          'Top',
          style: TextStyle(
              fontSize: screenWidth!*0.05,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold),
        ),
      ),
      Tab(
        child: Text(
          'Outdoor',
          style: TextStyle(
              fontSize: screenWidth!*0.05,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold),
        ),
      ),
      Tab(
        child: Text(
          'Indoor',
          style: TextStyle(
              fontSize: screenWidth!*0.05,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold),
        ),
      ),
      Tab(
        child: Text(
          'Plants',
          style: TextStyle(
              fontSize: screenWidth!*0.05,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold),
        ),
      )
    ];
    return Scaffold(
      body:SafeArea(
        child: ListView(
          children: [
            BuildPlantsAppBar(
              screenWidth:screenWidth!,
              screenHeight:screenHeight!,
            ),
            Padding(
              padding:  EdgeInsets.all(screenWidth!*0.05,),
              child: Text(
                'Top Picks',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: screenWidth!*0.12,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth!*0.05,),
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.transparent,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey.withOpacity(0.5),
                isScrollable: true,
                tabs: tabs,
              ),
            ),
            Container(
              height: screenHeight! - 200.0,
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  BuildPlantList(
                    screenWidth:screenWidth!,
                    screenHeight:screenHeight!,
                  ),
                  BuildPlantList(
                    screenWidth:screenWidth!,
                    screenHeight:screenHeight!,
                  ),
                  BuildPlantList(
                    screenWidth:screenWidth!,
                    screenHeight:screenHeight!,
                  ),
                  BuildPlantList(
                    screenWidth:screenWidth!,
                    screenHeight:screenHeight!,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
