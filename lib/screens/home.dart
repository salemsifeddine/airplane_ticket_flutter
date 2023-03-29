import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/style.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Styles.bgcolor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
              child:Column(
                children: [
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:  [
                         const Gap( 10),
                          Text("Good morning",style: Styles.headlinestyle3),
                          const Gap(5),
                          Text("Book Tickets",style: Styles.headlinestyle1),
                       ],
                     ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(

                          image: DecorationImage(

                              image: AssetImage("assets/images/airplane.png")
                          )
                        ),
                      )
                    ],
                  ),
                 const Gap(25),
                 Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color:const Color(0xFFF4F6FD),

                   ),
                   padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                   child:Row(
                       children:  [
                         const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205),),
                         Text("search..",style: Styles.headlinestyle4,)
                       ],
                     )

                 ),
                  const Gap(25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text("Upcoming Flights",style: Styles.headlinestyle2,),
                      Text("View all", style: Styles.textsyle.copyWith(color: Styles.primarycolor),),
                    ],
                  )
                ],
              )
          )
        ],
      )
    );
  }
}