import 'package:flutter/material.dart';

class MiraeWidget extends StatelessWidget {
  const MiraeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.13,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Container(
             padding: EdgeInsets.all(5),
             decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 222, 222, 222)),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
              ),
              child: Image.asset(
                'assets/immg1.jpg'
              ),
           ),
           Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 15,top: 10),
                child: Text('Mirae Asset Emerging Bluechip Fund',style: TextStyle(color: Colors.black),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  margin: EdgeInsets.all(6),
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 238, 238),
                    border: Border.all(color: Color.fromARGB(255, 238, 238, 238),),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('Equilty'),
                ),
                Container(
                  margin: EdgeInsets.all(6),
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 238, 238),
                    border: Border.all(color: Color.fromARGB(255, 238, 238, 238),),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('Large & Midcap'),
                ),
                Container(
                  margin: EdgeInsets.all(6),
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 238, 238),
                    border: Border.all(color: Color.fromARGB(255, 238, 238, 238),),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('High Risk'),
                ),
                ],
              ),
            ],
           ),
        ],
      ),
    );
  }
}