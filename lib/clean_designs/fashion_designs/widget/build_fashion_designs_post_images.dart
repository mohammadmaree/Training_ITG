import 'package:first_projrct/clean_designs/fashion_designs/pages/fashion_designs_post_details_item_page.dart';
import 'package:flutter/material.dart';

class BuildFashionDesignsPostImages extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final List<String> postImages;
  BuildFashionDesignsPostImages({
    required this.screenHeight,
    required this.screenWidth,
    required this.postImages,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => FashionDesignsPostDetailsItemPage(imageChosen: postImages[0])
            ));
          },
          child: Hero(
            tag: postImages[0],
            child: Container(
              height: screenHeight*0.27,
              width:
              (screenWidth - 50.0) / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: AssetImage(
                        postImages[0],
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
        Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FashionDesignsPostDetailsItemPage(imageChosen: postImages[1])
                ));
              },
              child: Hero(
                tag: postImages[1],
                child: Container(
                  height:screenHeight*0.13,
                  width: (screenWidth - 100.0) / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                          image: AssetImage(
                              postImages[1]),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            SizedBox(height: screenHeight*0.01,),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FashionDesignsPostDetailsItemPage(imageChosen: postImages[2])
                ));
              },
              child: Hero(
                tag: postImages[2],
                child: Container(
                  height:screenHeight*0.13,
                  width: (MediaQuery.of(context).size.width - 100.0) / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                          image: AssetImage(
                              postImages[2]),
                          fit: BoxFit.cover)),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
