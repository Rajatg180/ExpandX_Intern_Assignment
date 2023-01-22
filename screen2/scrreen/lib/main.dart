import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:scrreen/Widgets/categories_widget.dart';
import 'package:scrreen/Widgets/funds_widget.dart';
import 'package:scrreen/Widgets/smart_solutions.dart';

import 'Widgets/card_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title:  Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 250,
                 margin:EdgeInsets.only(left: 10,top: 5,bottom: 5),
                 padding: EdgeInsets.only(left: 10,right: 10),
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40)
                 ),
                 child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        cursorColor: Colors.orange,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Mutual Fund..",
                          hintStyle: TextStyle(
                            color: Colors.grey
                          )
                        ),
                      ),
                    ),
                  ],
                 ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20,right: 10),
                  child: Icon(
                    Icons.notifications,
                  ),
                ),
                Container(
                  child: Stack( 
                    children: [
                      Icon(
                        Icons.bookmark
                      ),
                      Positioned(
                          top: 0,
                          bottom: 10,
                          left: 8,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: Colors.blue,
                            ),
                            width: 15,
                            height: 15,
                            child: Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 10
                                ),
                              ),
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,),
                  child: Stack( 
                    children: [
                      Icon(
                        Icons.shopping_cart
                      ),
                      Positioned(
                          top: 0,
                          bottom: 10,
                          left: 8,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: Colors.blue,
                            ),
                            width: 15,
                            height: 15,
                            child: Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 10
                                ),
                              ),
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber[800],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Transact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardWidget(),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Popular Funds",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,left: 10),
              width: double.infinity,
              height: 150,
              child: FundsWidget()
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,top: 10),
              child: Text(
                "Best Categories",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,left: 20),
              width: double.infinity,
              height: 290,
              child: CategoriesWidget(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,top: 10),
              child: Text(
                "Smart Solutions",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,left: 20),
              width: double.infinity,
              height: 160,
              child: SmartSolutions(),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

