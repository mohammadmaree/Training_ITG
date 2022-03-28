import 'package:first_projrct/clean_designs/hairstylist/widget/build_hairstlist_get_time.dart';
import 'package:first_projrct/clean_designs/hairstylist/widget/build_hairstylist_get_barber.dart';
import 'package:first_projrct/clean_designs/hairstylist/widget/build_hairstylist_get_date.dart';
import 'package:first_projrct/clean_designs/hairstylist/widget/build_hairstylist_get_service.dart';
import 'package:flutter/material.dart';

class HairsrylistPage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;

  List<String>days=['Tue','Wed','Thu','Fri'];
  List<int>dates=[18,19,20,21];
  List<String>images=['assets/images/style2.jpg','assets/images/style1.jpg','assets/images/style3.jpeg'];
  List<String>names=['Anton','Jonathan','Jim'];
  List<String>times=['11.00','12.30','13.30','15.00'];
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('BOOKING',
            style: TextStyle(
                fontFamily: 'FirSans',
              fontSize: screenWidth!*0.045,
                color: Colors.black,
            )),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          iconSize:screenWidth!*0.06,
          icon: Icon(
              Icons.arrow_back,
            size: screenWidth!*0.06,
          ),
          color: Colors.black,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                height: 100.0,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 3.0,
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 4.0)
                ],
                color: Colors.white),
              ),
              Positioned(
                top: 20.0,
                left: 15.0,
                right: 15.0,
                child: Container(
                  height: 60.0,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          BuildHairstylistGetDate(
                              date: dates[index],
                              day: days[index],
                          ),
                      separatorBuilder: (context, index) =>SizedBox(width: 15.0),
                      itemCount: dates.length,
                  ),
                )
              )
            ],
          ),
          SizedBox(height: 35.0),
          Center(
            child: Text(
              'Hagorapt',
              style: TextStyle(
                  letterSpacing: 2.0,
                  fontFamily: 'Nunito',
                  fontSize: 30.0,
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: screenHeight!*0.02),
          Row(
            children: <Widget>[
              SizedBox(width: 15.0),
              BuildHairstylistGetService(name:'Beards',price:50),
              BuildHairstylistGetService(name: 'Crew Cut',price:15),
            ],
          ),
          SizedBox(height: screenHeight!*0.02),
          Container(
              height: 175.0,
              child:ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                 itemBuilder: (context, index) =>
                       BuildHairstylistGetBarber(
                          image:images[index],
                          name:names[index],
                           ),
                 separatorBuilder:(context, index)=> SizedBox(width: 15.0),
                 itemCount: images.length),),
          SizedBox(height: screenHeight!*0.025),
          Container(
            height: 50.0,
            child:ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    BuildHairstlistGetTime(time:times[index]),
                separatorBuilder: (context, index) => SizedBox(width: 15.0),
                itemCount: times.length,
            )
          ),
          SizedBox(height: screenHeight!*0.05),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.black),
                child: Center(
                  child: Text(
                    'BOOK',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontFamily: 'FirSans',
                        fontSize: screenWidth!*0.05,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


}
