import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'main_logic_page.dart';
import 'package:get/get.dart';



class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(68, 68, 95, 0.51),
      body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [


             Container(
               height: MediaQuery.of(context).size.height*0.4,
                width: MediaQuery.of(context).size.width*0.9,
                 
                 color: Colors.transparent,
                  child: Image.asset("assets/img_1.png",fit:BoxFit.contain,),
             ),


             5.heightBox,
             Text( "Is your password safe enough?",
                 textAlign: TextAlign.center,
                 style: TextStyle(

                 fontSize: 40,
                 color: Color.fromRGBO(227, 227, 227, 1))
             ),

              30.heightBox,




              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PasswordCheckLogicPage()));
                },
                
                child: Container(
                   height: 80,
                   width: 300,

                   decoration: BoxDecoration(
                       color: Color.fromRGBO(117, 116, 146, 1),
                      borderRadius: BorderRadius.circular(20),

                   ),

                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text( "Check it out ",
                            textAlign: TextAlign.center,
                            style: TextStyle(

                                fontSize: 30,
                                color: Color.fromRGBO(239, 237, 255, 1))
                        ),
                        10.widthBox,
                        Icon(
                          Icons.arrow_forward_ios,
                            size: 35,
                            color: Color.fromRGBO(239, 237, 255, 1)
                        ),

                      ],

                  ),
                ),
             
              ),

           ],
         ),
      ),
    );
  }
}

