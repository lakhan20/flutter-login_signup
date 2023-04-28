import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){

  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Login',
                style: TextStyle(fontSize: 30),),
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/images/login_img3.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.all(12.00),
                  child: TextFormField(
                    decoration: InputDecoration(
                    labelText: "Number",
                    fillColor: Colors.white,
                        filled: true,
                        hintText: "Please enter mobile number : "),
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],


                  ),
                ),
                ElevatedButton(onPressed: ()=>{}, child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                ),)
              ],
            ),
          ),

        ),

      ),
    );
  }
}
