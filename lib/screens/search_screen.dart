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
          const Gap(25),
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
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
            decoration: BoxDecoration(
                color: const Color(0xD91130CE),
                borderRadius:  BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [


                Text("Find Tickets",style: Styles.textsyle.copyWith(color: Colors.white) ,)
              ],
            ),
          ),
          const Gap(20),
          Container(
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text("Upcoming Flights",style: Styles.headlinestyle2,),
                InkWell(
                    onTap: (){
                      print("tapped");
                    },
                    child:Text("View all", style: Styles.textsyle.copyWith(color: Styles.primarycolor),)
                ),

              ],

            ),
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 350,
                  width: size.width*0.44,
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 180,
                        decoration:   const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/search.jpeg")
                          )
                        ),

                      ),
                      Gap(10),
                      Text(" 20% discount on the early booking of this flight, Don't miss!",style: Styles.headlinestyle2,)

                    ],
                  ),
                ),

                Column(

                  children: [
                Stack(
                  children: [
                    Container(
                      height: 174,
                      width: size.width*0.44,
                      decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(18)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Discount \nfor Servey",style: Styles.headlinestyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                          const Gap(10),
                          Text("Take the servey about our services and get discount",style: Styles.headlinestyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),)
                        ],
                      ),
                    ),
                 Positioned(
                 right: -25,
                 top: -23,
                 child:    Container(

                   padding: const EdgeInsets.all(21),
                   decoration: BoxDecoration(
                       color: Colors.transparent,
                       shape: BoxShape.circle,
                       border: Border.all(width: 18,color: const Color(0xFF189999))
                   ),
                 ))
                  ],
                ),
                    Gap(12),
                    Container(
                      height: 164,
                      width: size.width*0.44,
                      decoration: BoxDecoration(
                          color: const Color(0xFF3EC6545),
                          borderRadius: BorderRadius.circular(18)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Discount \nfor Servey",style: Styles.headlinestyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                          const Gap(10),
                          Text("Take the servey about our services and get discount",style: Styles.headlinestyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),)
                        ],
                      ),
                    )

                  ],
                )
              ],
            ),

        ],

      ),
    );
  }
}
