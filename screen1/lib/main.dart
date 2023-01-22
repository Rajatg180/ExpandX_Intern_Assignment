import 'package:flutter/material.dart';
import 'package:screen1/Widget/list_items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Container(
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back
                ),
                Expanded(
                  child: Container(
                   margin:EdgeInsets.only(left: 30,top: 5,bottom: 5),
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
                            
                            hintText: "Search Save Tax",
                            hintStyle: TextStyle(
                              color: Colors.grey
                            )
                          ),
                        ),
                      ),
                      Icon(
                       Icons.filter_list_sharp,
                       color: Colors.grey,
                      ),
                    ],
                   ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: ListItems(),
      )
    );
  }
}

