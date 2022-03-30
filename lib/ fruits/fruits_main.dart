import 'package:flutter/material.dart';
class  FruitsPage extends StatefulWidget {

  @override
  State<FruitsPage> createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage>with SingleTickerProviderStateMixin {

  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 10.0, right: 15.0, bottom: 10.0, left: 15.0),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage('assets/images/picsix.jpeg'),
                          fit: BoxFit.cover)),
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.black,
                  iconSize: 27.0,
                  onPressed: () {},
                )
              ],
            ),
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
                        fontSize: 33.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Bread',
                    style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Drink',
                    style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                // new FruitsPage(),
                // new FruitsPage(),
                // new FruitsPage()
              ],
            ),
          )
        ],
      ),
    );
  }
}
