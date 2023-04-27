import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:
          Expanded(
          flex: 15,
            child: Container(

              constraints: BoxConstraints.expand(),
              child:Center(child: Image.asset('assets/images/login_img3.jpg')), // <-- SEE HERE
            ),
          ),

        ),

      ),
    );
  }
}
