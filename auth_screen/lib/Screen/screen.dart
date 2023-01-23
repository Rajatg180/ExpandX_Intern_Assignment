
import 'package:flutter/material.dart';
class Screen extends StatefulWidget {
  Screen({required this.hinttext1,required this.hinttext2,required this.buttonText,required this.isLogin});
  final hinttext1;
  final hinttext2;
  final buttonText;
  final isLogin;
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  
  @override
  bool _isObscure = true;
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 25),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Card(
              elevation: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                width: 300,
                child: TextField(
                  cursorColor: Colors.orange,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: Colors.grey
                    ),
                    hintText:  widget.hinttext1,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Card(
              elevation: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                width: 300,
                child: (widget.isLogin)?TextField(
                  obscureText: _isObscure,
                  cursorColor: Colors.orange,
                  decoration: InputDecoration(
                    hintText: widget.hinttext2,
                    hintStyle: TextStyle(
                      color: Colors.grey
                    ),
                    border: InputBorder.none,
                    suffixIcon:IconButton(
                      icon: Icon(
                            color:Colors.grey,
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }
                      ),
                  ),
                )
                :TextField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.orange,
                  decoration: InputDecoration(
                    hintText: widget.hinttext2,
                    hintStyle: TextStyle(
                      color: Colors.grey
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: ElevatedButton(
              child: Text(widget.buttonText),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 206, 99, 5),
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                  textStyle: TextStyle(
                  fontSize: 20,
                  )
                ),
              ),
        ),
        (widget.isLogin)?Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Forgot Password ?',
            style: TextStyle(
              color: Colors.grey,
              decoration: TextDecoration.underline
            ),
          ),
        ):Container()
      ],
    );
  }
}