import 'package:flutter/material.dart';

class BuildFurnitureShoppingItemCard extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;
  final String itemName;
  final String color;
  final int price;
  final String imgPath;
  final bool available;
  final int index;
  BuildFurnitureShoppingItemCard({
    required this.screenHeight,
    required this.screenWidth,
    required this.itemName,
    required this.color,
    required this.price,
    required this.imgPath,
    required this.available,
    required this.index
  });

  @override
  State<BuildFurnitureShoppingItemCard> createState() => _BuildFurnitureShoppingItemCardState();
}

class _BuildFurnitureShoppingItemCardState extends State<BuildFurnitureShoppingItemCard> {

  List picked = [false, false,false];
  int totalAmount = 0;
  pickToggle(index) {
    setState(() {
      picked[index] = !picked[index];
      getTotalAmount();
    });
  }
  getTotalAmount() {
    var count = 0;
    for (int i = 0; i < picked.length; i++) {
      if (picked[i]) {
        count = count + 1;
      }
      if (i == picked.length - 1) {
        setState(() {
          totalAmount = widget.price * count;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.available) {
          pickToggle(widget.index);
        }
      },
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
              borderRadius: BorderRadius.circular(10.0),
              elevation: 3.0,
              child: Container(
                  padding: EdgeInsets.only(left: widget.screenWidth*0.04, right: widget.screenWidth*0.04),
                  width: widget.screenWidth*0.94,
                  height: widget.screenHeight*0.18,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              height: widget.screenWidth*0.065,
                              width: widget.screenWidth*0.065,
                              decoration: BoxDecoration(
                                color: widget.available
                                    ? Colors.grey.withOpacity(0.4)
                                    : Colors.red.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(widget.screenWidth*0.1,),
                              ),
                              child: Center(
                                  child: widget.available
                                      ? Container(
                                    height: widget.screenWidth*0.035,
                                    width: widget.screenWidth*0.035,
                                    decoration: BoxDecoration(
                                        color: picked[widget.index]
                                            ? Colors.yellow
                                            : Colors.grey
                                            .withOpacity(0.4),
                                        borderRadius:
                                        BorderRadius.circular(widget.screenWidth*0.1,)),
                                  )
                                      : Container()))
                        ],
                      ),
                      SizedBox(width: widget.screenWidth*0.03,),
                      Container(
                        height:  widget.screenWidth*0.285,
                        width:  widget.screenWidth*0.3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.imgPath),
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(width: widget.screenWidth*0.03,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                widget.itemName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: widget.screenWidth*0.0375,),
                              ),
                              SizedBox(width: 7.0),
                              widget.available
                                  ? picked[widget.index]
                                  ? Text(
                                'x1',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: widget.screenWidth*0.04,
                                    color: Colors.grey),
                              )
                                  : Container()
                                  : Container()
                            ],
                          ),
                          SizedBox(height:widget.screenHeight*0.01,),
                          widget.available
                              ? Text(
                            'Color: ' + widget.color,
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: widget.screenWidth*0.04,
                                color: Colors.grey),
                          )
                              : OutlineButton(
                            onPressed: () {},
                            borderSide: BorderSide(
                                color: Colors.red,
                                width: widget.screenWidth*0.01,
                                style: BorderStyle.solid),
                            child: Center(
                              child: Text('Find Similar',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      fontSize: widget.screenWidth*0.04,
                                      color: Colors.red)),
                            ),
                          ),
                          SizedBox(height:widget.screenHeight*0.01,),
                          widget.available
                              ? Text(
                            '\$' + widget.price.toString(),
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: widget.screenWidth*0.06,
                                color: const Color(0xFFFDD34A)),
                          )
                              : Container(),
                        ],
                      )
                    ],
                  )))),
    );
  }
}
