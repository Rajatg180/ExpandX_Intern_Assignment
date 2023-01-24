import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height*0.50,
      child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width:MediaQuery.of(context).size.width*0.28,
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
                              fit : BoxFit.cover,
                              'assets/images3.jpg'
                            ),
                            Text("Index Funds")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width:MediaQuery.of(context).size.width*0.28,
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
                              fit: BoxFit.cover,
                              'assets/images2.png'
                            ),
                            Text("Save Tax")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width:MediaQuery.of(context).size.width*0.28,
                      margin: EdgeInsets.only(left: 5),
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
                              fit: BoxFit.cover,
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
                height: MediaQuery.of(context).size.height*0.22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                    width:MediaQuery.of(context).size.width*0.28,
                    margin: EdgeInsets.only(right: 2.5,left: 2.5),
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
                             fit: BoxFit.cover,
                            'assets/images4.jpg'
                          ),
                          Text("SIP Rs.500")
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width:MediaQuery.of(context).size.width*0.28,
                    margin: EdgeInsets.only(left: 2.5,right: 2.5),
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
                            fit : BoxFit.cover,
                            'assets/images5.jpg'
                          ),
                          Text("Gold Funds")
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width:MediaQuery.of(context).size.width*0.28,
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
                            fit : BoxFit.cover,
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
      ),
    );
  }
}