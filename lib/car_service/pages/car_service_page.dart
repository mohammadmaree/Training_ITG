import 'package:first_projrct/car_service/pages/rental_service_page.dart';
import 'package:first_projrct/car_service/widget/build_car_service_app_bar.dart';
import 'package:first_projrct/car_service/widget/build_car_service_details.dart';
import 'package:first_projrct/car_service/widget/build_car_service_exchange.dart';
import 'package:first_projrct/car_service/widget/build_car_service_info.dart';
import 'package:flutter/material.dart';

class CarServicePage extends StatefulWidget {
  static String routeName = 'CarServicePageRouteName';

  @override
  State<CarServicePage> createState() => _CarServicePageState();
}

class _CarServicePageState extends State<CarServicePage>with SingleTickerProviderStateMixin{
  TabController? controller;
  double? screenWidth;
  double? screenHeight;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(left: screenWidth!*0.04),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildCarServiceAppBar(
                screenHeight:screenWidth!,
                screenWidth:screenHeight!,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(RentalServicePage.routeName);
                },
                child: Image.asset('assets/images/porsche.png', fit: BoxFit.cover,
                    height: 175.0, width: screenWidth! - 30.0),
              ),
              BuildCarServiceDetails(
                name:'PORSCHE',
                type:'2019 - 911 CARRERA S',
                screenHeight:screenWidth!,
                screenWidth:screenHeight!,
              ),
              Container(
                height: 0.75,
                width: screenWidth! - 30.0,
                color: const Color(0xFF434C68).withOpacity(0.4),
              ),
              SizedBox(height: screenHeight!*0.03),
              BuildCarServiceInfo(
                screenHeight:screenHeight!,
                screenWidth:screenWidth!,
              ),
              SizedBox(height: 20.0),
              Container(
                height: 0.75,
                width: screenWidth! - 30.0,
                color: Color(0xFF434C68).withOpacity(0.4),
              ),
              SizedBox(height: 10.0),
              BuildCarServiceExchange(
                screenHeight:screenHeight!,
                screenWidth:screenWidth!,
                name:'EXCHANGE YOUR VEHICLE',
              ),
            ],
          )
            ],
          ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            controller: controller,
            indicatorColor: Colors.transparent,
            tabs: <Widget>[
              Tab(icon: Icon(
                  Icons.more,
                  color: Colors.grey,
                  size: screenWidth!*0.065,
              )
              ),
              Tab(icon: Icon(
                  Icons.play_arrow,
                  color: Colors.grey,
                size: screenWidth!*0.065,
              ),),
              Tab(icon: Icon(
                  Icons.navigation,
                  color: Colors.black,
                size: screenWidth!*0.065,
              )),
            ]
        ),
      ),
    );
  }
}
