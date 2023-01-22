import 'dart:developer';
import 'Screen/screen.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int counter = 0;
  @override
  Widget build(BuildContext context) {

    void toggleSwitch(){
      if(counter==0){
        setState(() {
        counter = 1;
      });
      }
      else{
        setState(() {
          counter=0;
        });
      }
      
    }
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 100),
                width: double.infinity,
                height: 300,
                child: Image.asset('assets/img1.png'),
              ),
               Container(
                height: 60,
                
                margin: EdgeInsets.only(left: 60,right: 60,top: 20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 210, 209, 209),
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (counter==1)?toggleSwitch:null,
                        child: Container(
                          child: Center(child: Text("Login",style: TextStyle(color: (counter==1)?Colors.white:Colors.black),)),
                          margin: EdgeInsets.all(5),
                          height: 60,
                          decoration: BoxDecoration(
                            color: (counter==0)? Colors.white: Color.fromARGB(255, 210, 209, 209),
                            borderRadius:BorderRadius.circular(40) ,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: (counter==0)?toggleSwitch:null,
                        child: Container(
                          child: Center(child: Text("Signup",style: TextStyle(color: (counter==0)?Colors.white:Colors.black),)),
                          height: 60,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: (counter==1) ?  Colors.white: Color.fromARGB(255, 210, 209, 209),
                            borderRadius:BorderRadius.circular(40) 
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
               ),
              if(counter==0)Screen(hinttext1: "Mobile no",hinttext2: "Password",buttonText: 'LOGIN',isLogin: true,)
              else Screen(hinttext1: "Mobile no",hinttext2: "Email Address",buttonText: 'SIGN UP',isLogin: false,),
            ],
          ),
        ),
      )
    );
  }
}
