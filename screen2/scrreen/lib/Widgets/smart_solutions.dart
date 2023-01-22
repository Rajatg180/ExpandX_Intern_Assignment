import 'package:flutter/material.dart';
class SmartSolutions extends StatelessWidget {
  const SmartSolutions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Container(
                width:MediaQuery.of(context).size.width*0.45,
                margin: EdgeInsets.only(right: 2.5),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 222, 222, 222)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        width:100,
                        'assets/images6.png'
                      ),
                      Text("Index Funds")
                    ],
                  ),
                ),
              ),
              Container(
                width:MediaQuery.of(context).size.width*0.45,
                margin: EdgeInsets.only(left: 2.5),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 222, 222, 222)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        width:110,
                        height:100,
                        'assets/images2.png'
                      ),
                      Text("NFO")
                    ],
                  ),
                ),
              ),
      ]
    );
  }
}