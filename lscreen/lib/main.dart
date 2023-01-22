import 'package:flutter/material.dart';
import 'package:lscreen/Widgets/graph_widget.dart';
import 'package:lscreen/Widgets/mirae_widget.dart';
import 'package:lscreen/Widgets/percent_widget.dart';

import 'Widgets/button_widget.dart';
import 'Widgets/lower_widget.dart';

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
                  child: Icon(
                    Icons.arrow_back
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 50,),
                  child: Text(
                    "Funds Details"
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 5),
                  child: Icon(
                    Icons.share,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5,right: 5,),
                  child: Icon(
                    Icons.bookmark_outline
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 5,right: 10,),
                  child: Icon(
                    Icons.shopping_cart_outlined
                  )
                ),
              ],
            ),
          ),
      ),
      body: Column(
        children: [
          MiraeWidget(),
          PercentWidget(),
          GraphWidget(),
          LowerWidget(),
          ButtonWidget(),
        ],
      ),
      ),
    );
  }
}

