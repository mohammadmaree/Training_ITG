import 'package:first_projrct/widget/build_dots_active_photo.dart';
import 'package:first_projrct/widget/build_dots_inactive_photo.dart';
import 'package:first_projrct/widget/selected_photo.dart';
import 'package:flutter/material.dart';

class BuildSlider extends StatefulWidget {
  final List<String> photos;
  BuildSlider({
    required this.photos,
  });

  @override
  State<BuildSlider> createState() => _BuildSliderState();
}

class _BuildSliderState extends State<BuildSlider>
    //with SingleTickerProviderStateMixin
{

  double? screenWidth;
  double? screenHeight;

  // Animation? carouselAnimation;
  // AnimationController? animationController;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   animationController= AnimationController(duration: const Duration(seconds: 18),vsync: this);
  //   carouselAnimation =Tween(begin: 0, end: widget.photos.length-1).animate(
  //       animationController!)..addListener(() {
  //         setState(() {
  //           photoIndex=carouselAnimation!.value;
  //         });
  //   });
  //   animationController!.repeat();
  // }
  // @override
  // void dispose(){
  //   super.dispose();
  //   animationController!.repeat();
  // }

  int photoIndex = 0;


  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < widget.photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return  Center(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.photos[photoIndex]),
                    fit: BoxFit.cover)),
            height: 210.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                color: Colors.pink,
                onPressed: () {},
              )
            ],
          ),
          GestureDetector(
            child: Container(
              height: 210.0,
              width: screenWidth,
              color: Colors.transparent,
            ),
            onTap: _nextImage,
          ),
          GestureDetector(
            child: Container(
              height: 210.0,
              width: screenWidth!*0.5,
              color: Colors.transparent,
            ),
            onTap: _previousImage,
          ),
          Positioned(
            top: 180.0,
            left: 5.0,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
                SizedBox(width: 2.0),
                Text(
                  '4.0',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 4.0),
                SelectedPhoto(
                    photoIndex: photoIndex, numberOfDots: widget.photos.length)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
