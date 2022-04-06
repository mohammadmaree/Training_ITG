import 'package:flutter/material.dart';

class BuildStarbucksItem extends StatefulWidget {
  final String productName;
  final int count;
  final double screenWidth;
  final double screenHeight;
  BuildStarbucksItem({
    required this.productName,
    required this.count,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  State<BuildStarbucksItem> createState() => _BuildStarbucksItemState();
}

class _BuildStarbucksItemState extends State<BuildStarbucksItem> {

  var selectedItem = 'All products';
  selectedProduct(prodName) {
    setState(() {
      selectedItem = prodName;
    });
  }

  switchHighlight(prodName) {
    if (prodName == selectedItem) {
      return const Color(0xFF116D51);
    } else {
      return Colors.grey.withOpacity(0.3);
    }
  }

  switchHighlightColor(prodName) {
    if (prodName == selectedItem) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  switchShadow(prodName) {
    if (prodName == selectedItem) {
      return const Color(0xFF116D51).withOpacity(0.4);
    } else {
      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(widget.screenWidth*0.03),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: switchHighlight(widget.productName),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4.0,
                  spreadRadius: 2.0,
                  color: switchShadow(widget.productName))
            ]),
        height: widget.screenHeight*0.18,
        width:  widget.screenWidth*0.35,
        child: InkWell(
          onTap: () {
            selectedProduct(widget.productName);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: widget.screenHeight*0.03),
              Padding(
                padding: EdgeInsets.only(left: widget.screenWidth*0.03),
                child: Text(
                  widget.count.toString(),
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: widget.screenWidth*0.05,
                      fontWeight: FontWeight.bold,
                      color: switchHighlightColor(widget.productName)),
                ),
              ),
              SizedBox(height: widget.screenHeight*0.01),
              Padding(
                padding:  EdgeInsets.only(left: widget.screenWidth*0.03),
                child: Text(
                  widget.productName,
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: widget.screenWidth*0.05,
                      color: switchHighlightColor(widget.productName)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
