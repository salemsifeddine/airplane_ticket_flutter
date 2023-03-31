import 'package:bbb/utils/AppLayout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/style.dart';

class SearchScreen extends StatelessWidget {

  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
        children: [
          const Gap(20),
          Text("What are you \n Looking for?", style: Styles.headlinestyle1.copyWith(fontSize: 35),),
         const Gap(20),
          Container(
            padding: const EdgeInsets.all(3.5),

            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFFF4F6FD),

            ),

            child: Row(
              children: [
                Container(

                  width: size.width*0.4357,

                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.horizontal(left:Radius.circular(50)),
                    color: Color(0xFFF4F6FD)
                ),

                  child:  Text("Airline Tickets",style: Styles.headlinestyle4.copyWith(fontSize: 15),textAlign: TextAlign.center,),

                ),
                Container(

                  width: size.width*0.45,

                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right:Radius.circular(50)),
                      color: Colors.white
                  ),

                  child:  Text("TEXT",style: Styles.headlinestyle4.copyWith(fontSize: 15),textAlign: TextAlign.center,),

                ),


              ],
            ),

          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:  BorderRadius.circular(15)
            ),
            child: Row(
              children:  [
                const Icon(Icons.flight_takeoff_rounded, color: Color(0xFFBFC2DF),),

                Text("    Departure",style: Styles.textsyle,)
              ],
            ),
          ),
          const Gap(12),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:  BorderRadius.circular(15)
            ),
            child: Row(
              children:  [
                const Icon(Icons.flight_land_rounded, color: Color(0xFFBFC2DF),),

                Text("    Arrival",style: Styles.textsyle,)
              ],
            ),
          )
        ],

      ),
    );
  }
}
