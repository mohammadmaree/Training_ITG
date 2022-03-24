import 'package:flutter/material.dart';

class BuildFurnitureProductDescriptionAppBar extends StatefulWidget {
  final IconData icon;
  final IconData favoriteBorder;
  final IconData favorite;
  final double screenHeight;
  final double screenWidth;
  BuildFurnitureProductDescriptionAppBar({
    required this.icon,
    required this.favoriteBorder,
    required this.favorite,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  State<BuildFurnitureProductDescriptionAppBar> createState() => _BuildFurnitureProductDescriptionAppBarState();
}

class _BuildFurnitureProductDescriptionAppBarState extends State<BuildFurnitureProductDescriptionAppBar> {

  bool isFavorite = true;
  changeFavorite()
  {
    setState(() {
      isFavorite=!isFavorite;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0,widget.screenWidth*0.01,widget.screenWidth*0.04,0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(
                widget.icon,
                size: widget.screenWidth*0.08,
              ),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              }),
          GestureDetector(
            onTap: (){
              changeFavorite();
            },
            child: Material(
              elevation: isFavorite ? 0.0 : 2.0,
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                height: widget.screenWidth*0.12,
                width: widget.screenWidth*0.12,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: isFavorite
                        ? Colors.grey.withOpacity(0.2)
                        : Colors.white),
                child: Center(
                  child: isFavorite
                      ? Icon(
                    widget.favoriteBorder,
                    size:widget.screenWidth*0.08,
                  )
                      : Icon(
                    widget.favorite, color: Colors.red,
                    size:widget.screenWidth*0.08,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
