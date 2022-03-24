import 'package:first_projrct/Furniture/widget/furniture_stats/build_furniture_category_stats.dart';
import 'package:flutter/material.dart';

class BuildFurnitureCategoriesStats extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  // final List<IconData> icons;
  // final List<String> names;
  BuildFurnitureCategoriesStats({
    required this.screenHeight,
    required this.screenWidth,
    // required this.icons,
    // required this.names,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BuildFurnitureCategoryStats(
          screenWidth:screenWidth,
          screenHeight:screenHeight,
          icon:Icons.folder_shared,
          text:'Favorites',
        ),
        BuildFurnitureCategoryStats(
          screenWidth:screenWidth,
          screenHeight:screenHeight,
          icon:Icons.account_balance_wallet,
          text:'Wallet',
        ),
        BuildFurnitureCategoryStats(
          screenWidth:screenWidth,
          screenHeight:screenHeight,
          icon:Icons.print,
          text:'Footprint',
        ),
        BuildFurnitureCategoryStats(
          screenWidth:screenWidth,
          screenHeight:screenHeight,
          icon:Icons.computer,
          text:'Coupon',
        ),
      ],
    );
  }
}
