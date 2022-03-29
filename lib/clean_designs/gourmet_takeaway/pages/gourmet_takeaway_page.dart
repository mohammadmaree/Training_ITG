import 'package:first_projrct/clean_designs/gourmet_takeaway/widget/build_gourmet_takeaway_backgrund_card.dart';
import 'package:first_projrct/clean_designs/gourmet_takeaway/widget/build_gourmet_takeaway_foods.dart';
import 'package:first_projrct/clean_designs/gourmet_takeaway/widget/build_gourmet_takeaway_image.dart';
import 'package:first_projrct/clean_designs/gourmet_takeaway/widget/build_gourmet_takeaway_information.dart';
import 'package:flutter/material.dart';

class GourmetTakeawayPage extends StatefulWidget {
  @override
  State<GourmetTakeawayPage> createState() => _GourmetTakeawayPageState();
}

class _GourmetTakeawayPageState extends State<GourmetTakeawayPage>with SingleTickerProviderStateMixin {
  double? screenWidth;
  double? screenHeight;
  TabController? tabController;

  String image = 'assets/images/orangemodel.jpg';
  String name = 'Joccb Coleman';
  String info = 'Building 5104, 18 Street';
  String details = '13 Hudson Estuary, Freedom Island, New York Harbour';

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              BuildGourmetTakeawayBackgrundCard(
                screenHeight:screenHeight!,
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  iconSize: screenWidth!*0.07,
                  icon: Icon(
                      Icons.settings,
                    size:screenWidth!*0.07,
                  ),
                  color: Colors.black.withOpacity(0.7),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top:screenHeight!*0.075,
                left: screenWidth!*0.05,
                child: Row(
                  children: <Widget>[
                    BuildGourmetTakeawayImage(
                      screenWidth:screenWidth!*0.35,
                      image:image,
                    ),
                    SizedBox(width: screenWidth!*0.04,),
                    BuildGourmetTakeawayInformation(
                      screenWidth:screenWidth!,
                      screenHeight:screenHeight!,
                      name: name,
                      info: info,
                      details:details ,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:screenHeight!*0.35),
                child: TabBar(
                  controller: tabController,
                  indicatorColor: const Color(0xFFFE6E22),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 4.0,
                  labelColor: const Color(0xFFFE6E22),
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'Guess you like',
                        style: TextStyle(
                          fontSize: screenWidth!*0.06,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'News',
                        style: TextStyle(
                          fontSize: screenWidth!*0.06,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Coupon',
                        style: TextStyle(
                          fontSize: screenWidth!*0.06,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 275.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                BuildGourmetTakeawayFoods(
                  screenWidth:screenWidth!,
                  screenHeight: screenHeight!
                ),
                BuildGourmetTakeawayFoods(
                    screenWidth:screenWidth!,
                    screenHeight: screenHeight!
                ),
                BuildGourmetTakeawayFoods(
                    screenWidth:screenWidth!,
                    screenHeight: screenHeight!
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
