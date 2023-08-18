import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';


class PasswordCheckLogicPage extends StatefulWidget {
  const PasswordCheckLogicPage({Key? key}) : super(key: key);

  @override
  State<PasswordCheckLogicPage> createState() => _PasswordCheckLogicPageState();
}

class _PasswordCheckLogicPageState extends State<PasswordCheckLogicPage> {
  Color grey = Color.fromRGBO(217, 217, 217, 0.12);
  Color fontWhite = Color.fromRGBO(227, 227, 227, 1);

  int score = 0;
  String message = '';

  TextEditingController password = TextEditingController();

  void _checkPasswordStrength() {
    score = 0;

    if (password.text.length >= 8) {
      score += 1;
    }
    if (password.text.contains(new RegExp(r'[A-Z]')) && password.text.contains(new RegExp(r'[a-z]'))) {
      score += 1;
    }
    if (password.text.contains(new RegExp(r'[0-9]'))) {
      score += 1;
    }
    if (password.text.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      score += 1;
    }


    if (score <= 1) {
      message = 'Weak';
    }
    else if (score == 2) {
      message = 'Normal';
    } else {
      message = 'Strong';
    }

    setState(() {

    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold (
       backgroundColor: Color.fromRGBO(68, 68, 95, 0.51),
       body: Center(
         child: SingleChildScrollView(
           child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Container(
                  padding: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height*0.3,
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Column(

                    children: [
                       "Tips!".text.size(25).semiBold.white.make(),
                        20.heightBox,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 10),
                          "At Least 1 Capital Letter".text.size(20).color(fontWhite).make(),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 10),
                          "At Least 1 Number".text.size(20).color(fontWhite).make(),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 10),
                          "At Least 1 Special Character".text.size(20).color(fontWhite).make(),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 10),
                          "Minimum 8 Characters Long".text.size(20).color(fontWhite).make(),
                        ],
                      ),
                    ],
                  ),
                ),


                Container(
                    child: Padding(
                       padding: EdgeInsets.all(15),
                      child: TextField(
                        style: TextStyle(color: Colors.white),

                         controller: password,

           decoration: InputDecoration.collapsed(

           hintText: "Enter Your Password",
             hintStyle: TextStyle(color: Colors.white),
        


           ),
       ),
                    ),
                 ).box.height(60).width(MediaQuery.of(context).size.width*0.8).rounded.color(grey).make(),

                40.heightBox,
                GestureDetector(
                  onTap: _checkPasswordStrength,


                  child: Container(
                    height: 60,
                    width: 250,

                    decoration: BoxDecoration(
                      color: Color.fromRGBO(108, 99, 255, 1),
                      borderRadius: BorderRadius.circular(20),

                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text( "Check",
                            textAlign: TextAlign.center,
                            style: TextStyle(

                                fontSize: 30,
                                color: Color.fromRGBO(239, 237, 255, 1))
                        ),
                        10.widthBox,
                        Icon(
                            Icons.leaderboard_sharp,
                            size: 35,
                            color: Colors.deepOrange
                        ),

                      ],

                    ),
                  ),
                ),

                
                40.heightBox,
                
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child:    "Your Password is :  $message".text.semiBold.color(fontWhite).size(23).make(),)


              ],
           ),
         ),
       ),
    );
  }
}
