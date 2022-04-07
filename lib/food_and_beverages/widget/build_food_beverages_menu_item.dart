import 'package:flutter/material.dart';

class BuildFoodBeveragesMenuItem extends StatefulWidget {
  final String foodName;
  final IconData iconData;
  final double screenHeight;
  final double screenWidth;
  BuildFoodBeveragesMenuItem({
    required this.screenHeight,
    required this.screenWidth,
    required this.foodName,
    required this.iconData,
  });

  @override
  State<BuildFoodBeveragesMenuItem> createState() => _BuildFoodBeveragesMenuItemState();
}

class _BuildFoodBeveragesMenuItemState extends State<BuildFoodBeveragesMenuItem> {
  @override
  Widget build(BuildContext context) {
    var selectedFood = 'BURGER';
    selectMenuOption(String foodName) {
      setState(() {
        selectedFood = foodName;
      });
    }
    return InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          selectMenuOption(widget.foodName);
        },
        child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 300),
            height: selectedFood == widget.foodName ? 100.0 : 75.0,
            width: selectedFood == widget.foodName ? 100.0 : 75.0,
            color: selectedFood == widget.foodName
                ? Color(0xFFFD3566)
                : Colors.transparent,
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                widget.iconData,
                color: selectedFood == widget.foodName ? Colors.white : Colors.grey,
                size: 25.0,
              ),
              SizedBox(height: 12.0),
              Text(widget.foodName,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color:
                      selectedFood == widget.foodName ? Colors.white : Colors.grey,
                      fontSize: 10.0))
            ]
            )
        )
    );
  }
}
