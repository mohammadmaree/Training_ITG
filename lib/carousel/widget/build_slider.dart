import 'package:first_projrct/gcoaching/widget/build_dots_active_photo.dart';
import 'package:first_projrct/gcoaching/widget/build_dots_inactive_photo.dart';
import 'package:first_projrct/gcoaching/widget/selected_photo.dart';
import 'package:flutter/material.dart';

class BuildSlider extends StatefulWidget {
  final List<String> photos;
  final double screenWidth;
  final double screenHeight;
  BuildSlider({
    required this.photos,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  State<BuildSlider> createState() => _BuildSliderState();
}

class _BuildSliderState extends State<BuildSlider> with SingleTickerProviderStateMixin {

  Animation? carouselAnimation;
  AnimationController? animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController= AnimationController(duration: const Duration(seconds: 18),vsync: this);
    carouselAnimation =IntTween(begin: 0, end: widget.photos.length-1).animate(
        animationController!)..addListener(() {
          setState(() {
            photoIndex=carouselAnimation!.value;
          });
    });
    animationController!.repeat();
  }
  @override
  void dispose(){
    super.dispose();
    animationController!.repeat();
  }

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
    return  Center(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.photos[photoIndex]),
                    fit: BoxFit.cover)),
            height: widget.screenHeight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: widget.screenWidth*0.075,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                    Icons.favorite,
                  size: widget.screenWidth*0.075,
                ),
                color: Colors.pink,
                onPressed: () {},
              )
            ],
          ),
          // GestureDetector(
          //   child: Container(
          //     height: 210.0,
          //     width: screenWidth,
          //     color: Colors.transparent,
          //   ),
          //   onTap: _nextImage,
          // ),
          // GestureDetector(
          //   child: Container(
          //     height: 210.0,
          //     width: screenWidth!*0.5,
          //     color: Colors.transparent,
          //   ),
          //   onTap: _previousImage,
          // ),
          Positioned(
            //top: widget.screenHeight*0.875,
            bottom:widget.screenHeight*0.02,
            left: widget.screenWidth*0.02,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: widget.screenWidth*0.06,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: widget.screenWidth*0.06,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: widget.screenWidth*0.06,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: widget.screenWidth*0.06,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: widget.screenWidth*0.06,
                ),
                const SizedBox(width: 3.0),
                Text(
                  '4.0',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    fontSize: widget.screenWidth*0.045,
                  ),
                ),
                const SizedBox(width: 7.0),
                SelectedPhoto(
                  photoIndex: photoIndex,
                  numberOfDots: widget.photos.length,
                  screenWidth:widget.screenWidth*0.03,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
