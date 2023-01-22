import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40,left: 20,right: 20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.07,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(2),
            width: MediaQuery.of(context).size.width*0.40,
            child: Center(
              child: Text('Back',style: TextStyle(fontSize: 15,color: Colors.orange),),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.orange,width: 2),
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Container(
            margin: EdgeInsets.all(2),
            width: MediaQuery.of(context).size.width*0.40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.orange,width: 2),
              color: Colors.orange
            ),
            child: Center(child: Text('Invest Now',style: TextStyle(color: Colors.white),)),
          ),
        ],
      ),
    );
  }
}