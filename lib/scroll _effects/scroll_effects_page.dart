import 'package:first_projrct/scroll%20_effects/widget/build_scrool_effects_card.dart';
import 'package:first_projrct/scroll%20_effects/widget/build_scrool_effects_titles.dart';
import 'package:flutter/material.dart';

class ScrollEffectsPage extends StatefulWidget {
  @override
  State<ScrollEffectsPage> createState() => _ScrollEffectsPageState();
}

class _ScrollEffectsPageState extends State<ScrollEffectsPage> {
  double? screenWidth;

  double? screenHeight;

  ScrollController? _scrollController;

  var selectedSlide;

  List allSlides = [
    {'slideName': 'slideOne', 'selected': false},
    {'slideName': 'slideTwo', 'selected': false},
    {'slideName': 'slideThree', 'selected': false},
    {'slideName': 'slideFour', 'selected': false},
    {'slideName': 'slideFive', 'selected': false},
    {'slideName': 'slideSix', 'selected': false},
    {'slideName': 'slideSeven', 'selected': false},
    {'slideName': 'slideEight', 'selected': false},
    {'slideName': 'slideNine', 'selected': false}
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController!.addListener(changeSelector);
    setState(() {
      selectedSlide = allSlides[0];
      selectedSlide['selected'] = true;
    });
  }

  changeSelector() {
    var maxScrollVal = _scrollController!.position.maxScrollExtent;

    var divisor = (maxScrollVal / allSlides.length) + 20;

    var scrollValue = _scrollController!.offset.round();
    var slideValue = (scrollValue / divisor).round();

    var currentSlide = allSlides.indexWhere((slide) => slide['selected']);

    setState(() {
      allSlides[currentSlide]['selected'] = false;
      selectedSlide = allSlides[slideValue];
      selectedSlide['selected'] = true;
    });
  }


  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Scroll Tricks',
            style: TextStyle(
              fontSize:screenWidth!*0.075,
            ),
          ),
          centerTitle: true,
        ),
        body: Row(
          children: <Widget>[
            SizedBox(width: screenWidth!*0.025),
            Container(
              width: screenWidth! / 3,
              child: ListView.builder(
                itemBuilder: (context, index) =>
                    BuildScroolEffectsTitles(
                        slide:allSlides[index],
                      //function: scrollToSlide(allSlides[index]['slideName']),
                      screenWidth:screenWidth! ,
                      screenHeight:screenHeight! ,
                    ),
                itemCount:allSlides.length,
              ),
            ),
            SizedBox(width: screenWidth!*0.025),
            Container(
              width: (screenWidth! / 3) * 2 - 25.0,
              child: ListView.builder(
                controller: _scrollController,
                itemBuilder: (context, index) =>
                BuildScroolEffectsCard(
                  slide:allSlides[index],
                  screenWidth:screenWidth! ,
                  screenHeight:screenHeight! ,
                ),
                itemCount:allSlides.length,
               ),
            )
          ],
        ));
  }
  scrollToSlide(inputSlide) {
    var whichSlide = allSlides
        .indexWhere((slide) => slide['slideName'] == inputSlide['slideName']);

    var maxScrollValue = _scrollController!.position.maxScrollExtent;

    var divisor = (maxScrollValue / allSlides.length) + 20;

    var scrollToValue = whichSlide * divisor;

    _scrollController!.animateTo(scrollToValue,
        curve: Curves.easeIn, duration: Duration(milliseconds: 1000));
  }
}
