import 'package:bbb/reusable/thickcont.dart';
import 'package:bbb/utils/AppLayout.dart';
import 'package:bbb/utils/App_info.dart';
import 'package:bbb/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? ticketbar;
  const TicketView({Key? key, required this.ticket,this.ticketbar}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*0.90,

      height:ticketbar==null? size.height*0.25 : size.height*0.78,

      child: Container(
        margin:const EdgeInsets.only(left:16),
        child: Column(
          children: [
            Container(
              decoration:   BoxDecoration(
                color: ticketbar==null?   const Color(0xFF526799):Colors.white,
                borderRadius: const BorderRadius.only(topRight:  Radius.circular(21),
                topLeft:  Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("${ticket["from"]["code"]}",style: ticketbar==null?Styles.headlinestyle3.copyWith(color: Colors.white):Styles.headlinestyle3.copyWith(color: Colors.black),),
                      Expanded(child: Container()),
                      const ThicCont(ticketbar2:true),

                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context , BoxConstraints  constraints) {

                                return Flex(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    direction: Axis.horizontal,
                                    children: List.generate((constraints.constrainWidth()/6).floor(),(index)=>const SizedBox(
                                        width:3,height:1,child:DecoratedBox(decoration:BoxDecoration(
                                        color:Colors.lightBlue
                                    ))
                                    ),
                                    )
                                );
                              },

                            ),
                          ),
                          Center(child:Transform.rotate(angle: 1.5,child:Icon(Icons.local_airport_rounded,color: Colors.lightBlue,))),

                        ]
                      )),


                      const ThicCont(ticketbar2: true,),
                      Expanded(child: Container()),
                      Text("${ticket["to"]["code"]}",style: ticketbar==null?Styles.headlinestyle3.copyWith(color: Colors.white):Styles.headlinestyle3.copyWith(color: Colors.black),),
                    ],
                  ),
                  const Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,child: Text("${ticket["from"]["name"]}", style: Styles.headlinestyle4,),

                      ),

                      Text("${ticket["flying_time"]}", style: ticketbar==null?Styles.headlinestyle4.copyWith(color:Colors.white):Styles.headlinestyle4.copyWith(color:Colors.black),textAlign: TextAlign.center,),

                      SizedBox(

                        width: 100,child: Text("${ticket["to"]["name"]}", style: Styles.headlinestyle4,textAlign: TextAlign.end,),

                      ),
                    ],
                  )
                ],
              ),
            ),

            Container(
              color: ticketbar==null?Colors.deepOrange:Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight:Radius.circular(10),bottomRight: Radius.circular(10) )

                    )),
                  ),
                  Expanded(child:  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return  Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.white
                                ),
                              ),
                            ))
                        );
                      },

                    ),
                  )
                  ),
                  const SizedBox(

                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.only(topLeft:Radius.circular(10),bottomLeft: Radius.circular(10) )

                    )),
                  )
                ],
              ),
            ),

            Container(

              decoration:   BoxDecoration(

                  color: ticketbar==null?   Colors.deepOrange:Colors.white,
                  borderRadius: ticketbar==null?const BorderRadius.only(bottomRight:  Radius.circular(21),
                      bottomLeft:  Radius.circular(21)):
                  const BorderRadius.only(bottomRight:  Radius.circular(0),
                      bottomLeft:  Radius.circular(0))
              ),
              padding: const EdgeInsets.only(top: 10,left: 16,right: 16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("${ticket["date"]}",style: ticketbar==null?Styles.headlinestyle3.copyWith(color: Colors.white):Styles.headlinestyle3.copyWith(color: Colors.black),),
                      Expanded(child: Container()),


                      Text("${ticket["departure_time"]}",style: ticketbar==null? Styles.headlinestyle3.copyWith(color: Colors.white):  Styles.headlinestyle3.copyWith(color: Colors.black),textAlign: TextAlign.start,),



                      Expanded(child: Container()),
                      Text("${ticket["number"]}",style:  ticketbar==null?Styles.headlinestyle3.copyWith(color: Colors.white):Styles.headlinestyle3.copyWith(color: Colors.black),),
                    ],
                  ),
                  const Gap(10),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,child: Text("Date", style: ticketbar==null?Styles.headlinestyle4.copyWith(color: Colors.white):Styles.headlinestyle4.copyWith(color: Colors.grey),),

                      ),
                      Expanded(child: Container()),
                      Text("Departure Time", style: ticketbar==null?Styles.headlinestyle4.copyWith(color: Colors.white):Styles.headlinestyle4.copyWith(color: Colors.grey),),
                      Expanded(child: Container()),
                      SizedBox(

                        width: 100,child: Text("Number",style: ticketbar==null?Styles.headlinestyle4.copyWith(color: Colors.white):Styles.headlinestyle4.copyWith(color: Colors.grey),textAlign: TextAlign.end,),

                      ),
                    ],
                  )
                ],
              ),
            ),
           ticketbar==null?Gap(0):Container(
             child: Column(
               children: [ Gap(3),
                 Container(

                   decoration:   BoxDecoration(

                       color: ticketbar==null?   Colors.deepOrange:Colors.white,
                       borderRadius: ticketbar==null?const BorderRadius.only(bottomRight:  Radius.circular(21),
                           bottomLeft:  Radius.circular(21)):
                       const BorderRadius.only(bottomRight:  Radius.circular(0),
                           bottomLeft:  Radius.circular(0))
                   ),
                   padding: const EdgeInsets.only(top: 10,left: 16,right: 16,bottom: 16),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Text("ID",style: ticketbar==null?Styles.headlinestyle3.copyWith(color: Colors.white):Styles.headlinestyle3.copyWith(color: Colors.black),),
                           Expanded(child: Container()),





                           Expanded(child: Container()),
                           Text("11111111111",style:  ticketbar==null?Styles.headlinestyle3.copyWith(color: Colors.white):Styles.headlinestyle3.copyWith(color: Colors.black),),
                         ],
                       ),
                       const Gap(10),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           SizedBox(
                             width: 100,child: Text("Passenger", style: ticketbar==null?Styles.headlinestyle4.copyWith(color: Colors.white):Styles.headlinestyle4.copyWith(color: Colors.grey),),

                           ),
                           Expanded(child: Container()),
                           SizedBox(

                             width: 100,child: Text("passport",style: ticketbar==null?Styles.headlinestyle4.copyWith(color: Colors.white):Styles.headlinestyle4.copyWith(color: Colors.grey),textAlign: TextAlign.end,),

                           ),
                         ],
                       )
                     ],
                   ),
                 ),
                 Gap(3),
                 Container(

                   decoration:   BoxDecoration(

                       color: ticketbar==null?   Colors.deepOrange:Colors.white,
                       borderRadius: ticketbar==null?const BorderRadius.only(bottomRight:  Radius.circular(21),
                           bottomLeft:  Radius.circular(21)):
                       const BorderRadius.only(bottomRight:  Radius.circular(0),
                           bottomLeft:  Radius.circular(0))
                   ),
                   padding: const EdgeInsets.only(top: 10,left: 16,right: 16,bottom: 16),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Text("123454564564",style: ticketbar==null?Styles.headlinestyle3.copyWith(color: Colors.white):Styles.headlinestyle3.copyWith(color: Colors.black),),
                           Expanded(child: Container()),





                           Expanded(child: Container()),
                           Text("B3G6H8",style:  ticketbar==null?Styles.headlinestyle3.copyWith(color: Colors.white):Styles.headlinestyle3.copyWith(color: Colors.black),),
                         ],
                       ),
                       const Gap(10),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           SizedBox(
                             width: 100,child: Text("N° of E-ticket", style: ticketbar==null?Styles.headlinestyle4.copyWith(color: Colors.white):Styles.headlinestyle4.copyWith(color: Colors.grey),),

                           ),
                           Expanded(child: Container()),
                           SizedBox(

                             width: 100,child: Text("Booking Code",style: ticketbar==null?Styles.headlinestyle4.copyWith(color: Colors.white):Styles.headlinestyle4.copyWith(color: Colors.grey),textAlign: TextAlign.end,),

                           ),
                         ],
                       )
                     ],
                   ),
                 ),
                 const Gap(3),
                 Container(

                   decoration:   BoxDecoration(

                       color: ticketbar==null?   Colors.deepOrange:Colors.white,
                       borderRadius: ticketbar==null?const BorderRadius.only(bottomRight:  Radius.circular(21),
                           bottomLeft:  Radius.circular(21)):
                       const BorderRadius.only(bottomRight:  Radius.circular(21),
                           bottomLeft:  Radius.circular(21))
                   ),
                   padding: const EdgeInsets.only(top: 10,left: 16,right: 16,bottom: 16),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Image(image: AssetImage("assets/images/visa.png"),width: 60,),
                           Text("****7865",style: Styles.headlinestyle3.copyWith(color: Colors.black),),
                           Expanded(child: Container()),






                           Text("299.0£",style:  ticketbar==null?Styles.headlinestyle3.copyWith(color: Colors.white):Styles.headlinestyle3.copyWith(color: Colors.black),),
                         ],
                       ),
                       const Gap(10),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           SizedBox(
                             width: 100,child: Text("N° of E-ticket", style: ticketbar==null?Styles.headlinestyle4.copyWith(color: Colors.white):Styles.headlinestyle4.copyWith(color: Colors.grey),),

                           ),
                           Expanded(child: Container()),
                           SizedBox(

                             width: 100,child: Text("Price",style: ticketbar==null?Styles.headlinestyle4.copyWith(color: Colors.white):Styles.headlinestyle4.copyWith(color: Colors.grey),textAlign: TextAlign.end,),

                           ),
                         ],
                       )
                     ],
                   ),
                 ),
                 const Gap(15),
                 TicketView(ticket: airTicket[0])

               ],
             ),
           )





          ],
        ),
      ),
    );
  }
}
