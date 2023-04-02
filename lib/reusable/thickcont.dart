import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThicCont extends StatelessWidget {
  final bool? ticketbar2;
  const ThicCont({Key? key, this.ticketbar2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(20) ,

        border: Border.all(color: ticketbar2==null?Colors.white:Colors.lightBlue,width: 2.5)
      ),
    );
  }
}
