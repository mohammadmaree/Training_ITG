import 'package:flutter/material.dart';

class DetailInformationPage  extends StatefulWidget {

  @override
  State<DetailInformationPage> createState() => _DetailInformationPageState();
}

class _DetailInformationPageState extends State<DetailInformationPage>with SingleTickerProviderStateMixin{
  double? screenWidth;
  double? screenHeight;
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5);
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
              Container(
                height: screenHeight!*0.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/pic4.jpeg'), fit: BoxFit.cover),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    size:screenHeight!*0.05,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Icon(
                          Icons.shopping_basket,
                          color: Colors.black,
                        size:screenHeight!*0.04,
                      ),
                    ),
                    mini: true,
                    elevation: 0.0,
                  )),
              Padding(
                padding: EdgeInsets.only(left: 15.0, top: 100.0),
                child: Text(
                  'Woman',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize:screenHeight!*0.05,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
