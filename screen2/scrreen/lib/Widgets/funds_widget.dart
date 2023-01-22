import 'package:flutter/material.dart';
import '../Models/dummy_values.dart';
class FundsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
     itemCount: dummy_values.length,
     itemBuilder: (context, index) {
       return Container(
      width: 400,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 231, 231, 231)
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        leading: Container(
          width: 50,
          child: Image.asset(
            dummy_values[index].img,
            fit: BoxFit.cover,
          ),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                dummy_values[index].title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Tax Saving"),
            SizedBox(
             width: 40,
            ),
            Text("ELSS")
          ],
        ),
        trailing: Padding(
          padding: EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(dummy_values[index].trial),
              Text(">3Y returns")
            ],
          ),
        ),
      ),
    );
    },
    );;
  }
}