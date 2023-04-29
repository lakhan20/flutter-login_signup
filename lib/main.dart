import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_signup/signup.dart';

void main(){

  runApp(Main());

}
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Center(
            child: Form(
              key: _formkey,
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
                    validator: (value){

                      if(value!.isEmpty)
                        {
                          return "Value can't be empty";
                        }
                     else if(value!.length !=10)
                        {
                          return "number is not valid";
                        }
                      else
                      {
                        return null;
                      }

                    },
                      decoration: InputDecoration(
                      labelText: "Number",
                      fillColor: Colors.white,
                          filled: true,
                          hintText: "Please enter mobile number : "),
                          keyboardType: TextInputType.number,
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],


                    ),
                  ),
                  ElevatedButton(onPressed: ()=>{

                    if(_formkey.currentState!.validate())
                    {
                      print("hurre")
                    }
                    else{
                      print("Not valid")
                    }
                  }, child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                  ),),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>Signup())
                      );
                    },
                      child: Text('Sign Up',style: TextStyle(fontSize: 30),
                      ),
                  ),


                ],

              ),
            ),
          

          ),

        ),

      );
  }
}
