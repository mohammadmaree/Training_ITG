import 'package:first_projrct/carousel/widget/build_information_carousel.dart';
import 'package:first_projrct/carousel/widget/build_list_item.dart';
import 'package:first_projrct/carousel/widget/build_slider.dart';
import 'package:first_projrct/gcoaching/widget/selected_photo.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({Key? key}) : super(key: key);

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  double? screenWidth;
  double? screenHeight;

  List<String> photos = [
    'assets/images/burger1.jpg',
    'assets/images/burger2.jpg',
    'assets/images/burger3.jpg',
    'assets/images/burger4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuildSlider(
                photos: photos,
                screenWidth:screenWidth!,
                screenHeight:screenHeight!*0.28,
              ),
              const SizedBox(height: 15.0),
              BuildInformationCarousel(
                screenHeight:screenHeight!*0.28,
                screenWidth:screenWidth!,
              ),
              const SizedBox(height: 10.0),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildListItem(
                    picture:photos[index],
                    screenHeight:screenHeight!*0.2,
                    screenWidth:screenWidth!,
                  ),
                  itemCount: photos.length),
              // buildListItem(
              //   picture:photos[0],
              //   screenHeight:screenHeight!*0.2,
              //   screenWidth:screenWidth!,
              // ),
              // SizedBox(height: 10.0),
              // buildListItem(picture:photos[1]),
              // SizedBox(height: 10.0),
              // buildListItem(picture:photos[2]),
              // SizedBox(height: 10.0),
              // buildListItem(picture:photos[3]),
            ],
          ),
        ],
      ),
    );
  }
}

