import 'package:first_projrct/travelogram/pages/travelogram_profile_page.dart';
import 'package:first_projrct/travelogram/widget/build_travel_image_post.dart';
import 'package:first_projrct/travelogram/widget/build_travel_post_detail.dart';
import 'package:flutter/material.dart';

class TravelogramHome extends StatefulWidget {
  static String routeName = 'ravelogramePageRouteName';


  @override
  State<TravelogramHome> createState() => _TravelogramHomeState();
}

class _TravelogramHomeState extends State<TravelogramHome>
    with SingleTickerProviderStateMixin
{
  double? screenWidth;
  double? screenHeight;

  List<String> images=[
    'https://raw.githubusercontent.com/rajayogan/flutterui-traveldiary/master/assets/beach1.jpg',
    'https://raw.githubusercontent.com/rajayogan/flutterui-traveldiary/master/assets/beach2.jpg',
    'https://raw.githubusercontent.com/rajayogan/flutterui-traveldiary/master/assets/beach3.jpg'
  ];
  List<String> names=[
    'Mohammad',
    'Fares',
    'Yousef',
    'Nabeel',
  ];

  List<String> times=[
    '2h',
    '3h',
    '1h',
    '5h',
  ];

  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding:EdgeInsets.fromLTRB(screenWidth!*0.02,screenHeight!*0.02, screenWidth!*0.02, screenHeight!*0.02),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Travelogram',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: screenWidth!*0.05,
                      color: Colors.grey.shade900),
                ),
                SizedBox(width: screenWidth!*0.25),
                IconButton(
                  icon: Icon(
                      Icons.notifications,
                    size: screenWidth!*0.1,
                  ),
                  color: Colors.grey.shade500,
                  iconSize: screenWidth!*0.1,
                  onPressed: () {},
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(TravelogramProfilePage.routeName);
                  },
                  child: Container(
                    height: screenWidth!*0.1,
                    width: screenWidth!*0.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth!*0.1,),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/images/engin.jpg',
                            ))),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(screenWidth!*0.04,screenHeight!*0.02, screenWidth!*0.04, screenHeight!*0.02),
            child: Container(
              padding: EdgeInsets.only(left: screenWidth!*0.02),
              height: screenHeight!*0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey.shade100),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                        Icons.navigation,
                        color: Colors.blue,
                      size: screenWidth!*0.15,
                    ),
                    iconSize: screenWidth!*0.15,
                    onPressed: () {},
                  ),
                  SizedBox(width:screenWidth!*0.03,),
                  Padding(
                    padding: EdgeInsets.only(top: 27.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'MALDIVES TRIP 2018',
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: screenWidth!*0.04,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          'Add an update',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth!*0.05),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenWidth!*0.08),
                  IconButton(
                    icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      size:screenWidth!*0.12,

                    ),
                    iconSize: screenWidth!*0.12,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight!*0.01, left: screenWidth!*0.05, right: screenWidth!*0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'FROM THE COMMUNITY',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: screenWidth!*0.042,
                      fontFamily: 'Montserrat'),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth!*0.045,
                      fontFamily: 'Montserrat'),
                )
              ],
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
              itemBuilder:(context, index) => Column(
                children: [
                  buildTravelImagePost(
                    screenHeight: screenHeight!*0.5,
                    screenWidth:screenWidth!,
                    images: images,
                  ),
                  SizedBox(height: screenHeight!*0.017),
                  BuildPostTravelDetail(
                    screenWidth:screenWidth!,
                    screenHeight:screenHeight!*0.25,
                    name: names[index],
                     time: times[index],
                    numberOfImages:images.length,
                  ),
                ],
              ),
            separatorBuilder:(context, index) =>SizedBox(height: screenHeight!*0.02),
            itemCount: 4,
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.white,
          controller: tabController,
          tabs: <Widget>[
             Tab(
                 icon: Icon(
                     Icons.home,
                     color: Colors.black,
                   size:screenWidth!*0.075,

                 )),
             Tab(icon: Icon(
               Icons.search,
               color: Colors.grey,
               size:screenWidth!*0.075,
             )),
             Tab(icon: Icon(
                 Icons.graphic_eq,
                 color: Colors.grey,
               size:screenWidth!*0.075,
             )),
             Tab(icon: Icon(
                 Icons.add_circle_outline
                 , color: Colors.grey,
               size:screenWidth!*0.075,
             )),
          ],
        ),
      ),
    );
  }

}

