
import 'package:bbb/utils/AppLayout.dart';
import 'package:bbb/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  const HotelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return
      Container(
        width: size.width*0.65,
        height: 350,
        margin:const EdgeInsets.only(right:16),
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 17),

        decoration: BoxDecoration(
          color: Styles.primarycolor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            spreadRadius: 5
          )]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration:  BoxDecoration(
                borderRadius:  BorderRadius.circular(20),
                  color: Styles.primarycolor,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/hotel.jpg")
                  ),


              ),


            ),

                const Gap(10),
                Text("data",style: Styles.headlinestyle2.copyWith(color: Styles.kakicolor),),
            const Gap(7),
                Text("London",style: Styles.headlinestyle3.copyWith(color: Colors.white),),
            const Gap(5),
                Text("25£/day",style: Styles.headlinestyle1.copyWith(color: Styles.kakicolor),)



          ],
        ),
      );

  }
}
