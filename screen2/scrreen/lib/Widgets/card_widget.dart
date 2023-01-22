import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 60,vertical: 20),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 253, 210, 146)),
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 240, 213, 173)
        ),
        padding: EdgeInsets.only(top: 10,left: 10,bottom: 10),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Get Started With Ease!",style: TextStyle(fontWeight: FontWeight.bold,)),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Make a smart move towards"),
                        Text(" a better financial future")
                      ],
                    )
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                   color: Colors.orange,
                ),
                padding: EdgeInsets.only(top: 15,bottom: 15,left: 15),
                child: Center(child: Text("profile",style: TextStyle(color: Colors.white,fontSize: 15))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}