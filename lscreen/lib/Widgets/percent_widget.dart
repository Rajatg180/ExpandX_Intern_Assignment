import 'package:flutter/material.dart';

class PercentWidget extends StatelessWidget {
  const PercentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.10,
      child : Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: Text(
                  '10.74%',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Text(
                  '6 months returns',
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
              ),
            ],
           ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.05,
            width: 1,
            color: Colors.grey,
          ),
          Container(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: Text(
                  '97.00800',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Text(
                  'Nav: 05-01-2023 ',
                  style: TextStyle(
                    fontSize: 15
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