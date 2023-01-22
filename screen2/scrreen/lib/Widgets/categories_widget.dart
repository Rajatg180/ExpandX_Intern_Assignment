import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                width:MediaQuery.of(context).size.width*0.29,
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
                        'assets/images3.jpg'
                      ),
                      Text("Index Funds")
                    ],
                  ),
                ),
              ),
              Container(
                width:MediaQuery.of(context).size.width*0.29,
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
                        height:80,
                        'assets/images2.png'
                      ),
                      Text("Save Tax")
                    ],
                  ),
                ),
              ),
              Container(
                width:MediaQuery.of(context).size.width*0.29,
                margin: EdgeInsets.only(left: 5,right: 10),
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
                        'assets/image1.png'
                      ),
                      Text("High Return")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Container(
              width:MediaQuery.of(context).size.width*0.29,
              margin: EdgeInsets.only(right: 2.5,top: 5),
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
                      'assets/images4.jpg'
                    ),
                    Text("SIP Rs.500")
                  ],
                ),
              ),
            ),
            Container(
              width:MediaQuery.of(context).size.width*0.29,
              margin: EdgeInsets.only(left: 2.5,top: 5),
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
                      'assets/images5.jpg'
                    ),
                    Text("Gold Funds")
                  ],
                ),
              ),
            ),
            ],
          ),
        ),
      ],
    );
  }
}