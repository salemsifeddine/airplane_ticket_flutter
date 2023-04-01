import 'package:bbb/screens/ticket_view.dart';
import 'package:bbb/utils/AppLayout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/App_info.dart';
import '../utils/style.dart';

class TicketTab extends StatelessWidget {
  const TicketTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
      children:   [
        const Gap(30),
        Text("Tickets", style: Styles.headlinestyle1.copyWith(fontSize: 35),),
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

                child:  Text("Upcoming",style: Styles.headlinestyle4.copyWith(fontSize: 15),textAlign: TextAlign.center,),

              ),
              Container(

                width: size.width*0.45,

                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.horizontal(right:Radius.circular(50)),
                    color: Colors.white
                ),

                child:  Text("Previous",style: Styles.headlinestyle4.copyWith(fontSize: 15),textAlign: TextAlign.center,),

              ),


            ],
          ),

        ),
        const Gap(20),
        Container(
            padding: EdgeInsets.only(right: 10),
            child: TicketView(ticket: airTicket[0]))

      ],
    );
  }
}
