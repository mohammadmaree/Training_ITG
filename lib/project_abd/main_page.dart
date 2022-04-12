
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  double? screenWidth;
  double? screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height
        - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Stack(
        children: [
          // Positioned(
          //   top: screenHeight!*0.2,
          //   left: screenWidth!*0.1,
          //   child:Padding(
          //     padding: EdgeInsets.only(bottom: screenWidth! * 0.04),
          //     child: Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(40),
          //         color: Colors.black87,
          //       ),
          //       width:screenWidth!*0.84,
          //       child: DropdownButtonFormField<String>(
          //         menuMaxHeight: screenHeight! * 0.27,
          //         hint: FittedBox(
          //           child: Text(
          //             'Contact Info',
          //             style: TextStyle(
          //               color: Colors.white,
          //             ),
          //             overflow: TextOverflow.ellipsis,
          //           ),
          //         ),
          //         iconEnabledColor: Colors.blue,
          //         iconDisabledColor: Colors.grey,
          //         iconSize: screenWidth!*0.08,
          //         isExpanded: true,
          //         decoration: InputDecoration(
          //             filled: true,
          //             enabledBorder: OutlineInputBorder(
          //                 borderRadius: BorderRadius.circular(15)
          //             ),
          //             border: InputBorder.none,
          //             fillColor: Colors.white,
          //             labelStyle: TextStyle(
          //                 fontSize: screenWidth! * 0.035
          //             ),
          //             hintStyle: TextStyle(
          //                 fontSize: screenWidth! * 0.035
          //             )
          //         ),
          //         items: [
          //             DropdownMenuItem(
          //               value:'1',
          //               child: FittedBox(child: Text('maree'),
          //             ),
          //             ),
          //           DropdownMenuItem(
          //             value:'1',
          //             child: FittedBox(child: Text('maree'),
          //             ),
          //           ),
          //         ],
          //       //  value: value,
          //         onChanged: (currentValue){
          //           // AccountCubit.get(context).changeSelectedCompetitionValue = currentValue;
          //           // CacheHelper.saveData(key: COMPETITION_NAME_KEY, value: currentValue??'');
          //         },
          //       ),
          //     ),
          //   ),
          // ),
          Positioned(
            top: screenHeight!*0.4,
            left: screenWidth!*0.1,
            child: Container(
              height: screenHeight!*0.07,
                width: screenWidth!*0.84,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                //  color: Colors.black87,
                ),
              child: ExpansionTile(

                backgroundColor: Colors.transparent,
                collapsedBackgroundColor:  Color(0xFFF5A118).withOpacity(0.1),
                collapsedIconColor: Colors.white,
               // tilePadding: EdgeInse,
                iconColor:Colors.white,
                children: [],
                title: Text('sfdfsdf',style: TextStyle(color: Colors.white)),
              ),
            )
          ),
          Positioned(
            bottom:screenHeight!*0.04,
            left:screenWidth!*0.08,
            child:Container(
              //padding: EdgeInsets.fromLTRB(20.0,0.0,20.0, 20.0),
              height:screenHeight!*0.06,
              width:screenWidth!*0.84,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.black87,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size:screenWidth!*0.06,
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.white,
                    size:screenWidth!*0.06,
                  ),
                  Icon(
                    Icons.share_arrival_time_rounded,
                    color: Colors.black54.withOpacity(0.0),
                    size:screenWidth!*0.06,
                  ),
                  Icon(
                    Icons.person_add_alt,
                    color: Colors.white,
                    size:screenWidth!*0.06,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size:screenWidth!*0.06,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom:screenHeight!*0.03,
            left:screenWidth!*0.415,
            child:Container(
              //padding: EdgeInsets.fromLTRB(20.0,0.0,20.0, 20.0),
              height:screenWidth!*0.17,
              width:screenWidth!*0.17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth!*0.1,),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 4.0
                  )
                ],
                color: Color(0xFFE0E0E0),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget defaultFormChoice({
    required String label,
    required List<String> allList,
    required List<String> selectedList,
  })
  {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey,width: 0.7,),
        borderRadius: BorderRadius.circular(2),
      ),
      child: ExpansionTile(
        collapsedIconColor: Colors.grey,
        iconColor:Colors.white,
        title: Text(
          label,
          style:
          TextStyle(color: Colors.black54,fontSize: 14.5,fontWeight: FontWeight.bold),
        ),
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 17,bottom: 10,right: 10),
              child: Container(
                height: 150,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemBuilder:(context, index) =>  CheckboxListTile(
                    title: Text(allList[index]),
                    onChanged:(isSelected){

                    },
                    value:selectedList.contains(allList[index]),
                  ),
                  itemCount: allList.length,
                ),
              )
          ),
        ],
      ),
    );
  }
}




