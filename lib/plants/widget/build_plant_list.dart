import 'package:first_projrct/plants/widget/build_get_plant_card.dart';
import 'package:flutter/material.dart';

class BuildPlantList extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  BuildPlantList({
    required this.screenWidth,
    required this.screenHeight,
  });
  @override
  State<BuildPlantList> createState() => _BuildPlantListState();
}

class _BuildPlantListState extends State<BuildPlantList> {
  ScrollController? _scrollController;

  List allDescriptions = [
    'Aloe vera is a succelent plant of the genus Aloe. I\'ts medicinal uses and air purifying ability make it the plant that you shouldn\'t live without.',
    'Some other description',
    'Third description'
  ];

  String? description;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController!.addListener(changedesc);
    setState(() {
      description = allDescriptions[0];
    });
  }
  changedesc() {
    var value = _scrollController!.offset.round();
    var descIndex = (value / 150).round();
    print(value);
    setState(() {
      description = allDescriptions[descIndex];
    });
  }
  List<String>images=['assets/images/whiteplant.png','assets/images/whiteplant.png','assets/images/whiteplant.png'];
  List<String> prices=['25','20','30'];
  List<String>plantTypes=['OUTDOOR','INDOOR','INDOOR'];
  List<String>names=['Aloe Vera','Ficus','Ficus'];


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: widget.screenHeight*0.5,
          child: ListView.separated(
            padding: const EdgeInsets.only(left: 25.0),
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemBuilder:(context, index) => BuildGetPlantCard(
              imgPath: images[index],
              price: prices[index],
              plantType:plantTypes[index],
              plantName:names[index],
              screenWidth:widget.screenWidth,
              screenHeight:widget.screenHeight ,
            ),
            separatorBuilder:(context, index) =>SizedBox(width: 15.0),
            itemCount:images.length,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text(
            'Description',
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontSize: widget.screenWidth*0.05,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text(
            description??"isEmpty",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: widget.screenWidth*0.035,
            ),
          ),
        )
      ],
    );
  }
}
