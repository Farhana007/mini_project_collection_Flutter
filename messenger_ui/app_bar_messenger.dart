import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:dream_app/messenger_ui/pages/chat_page.dart';
import 'package:dream_app/messenger_ui/pages/call_page.dart';
import 'package:dream_app/messenger_ui/pages/people_page.dart';
import 'package:dream_app/messenger_ui/pages/stories_page.dart';



class MessengerMainPage extends StatefulWidget {
  const MessengerMainPage({Key? key}) : super(key: key);

  @override
  State<MessengerMainPage> createState() => _MessengerMainPageState();
}

class _MessengerMainPageState extends State<MessengerMainPage> {


   int _currentIndex = 0;
   void changePos (int index){
     setState(() {
       _currentIndex = index;
     });
   }


   final List <Widget> _pages = [
     ChatsPage(),
     CallPage(),
     PeoplePage(),
     StoriesPage(),

   ];


   @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appbar section

        appBar: AppBar(
           backgroundColor: Colors.black,
             title: "Chats".text.size(25).make(),
           actions: [
             Container(
               child: IconButton(onPressed: (){},
                   icon: Icon(Icons.camera_alt_rounded,size: 25,)),
             ).box.roundedFull.color(Colors.white10).make(),
             15.widthBox,
             Container(
               child: IconButton(onPressed: (){},
                   icon: Icon(Icons.edit,size: 25,)),
             ).box.roundedFull.color(Colors.white10).make(),
             15.widthBox,
           ],
        ),
       //drawer Saction
       drawer: Drawer(
           backgroundColor: Colors.white10,
           child: Container(
              color: Colors.white10,
           ),
       ),
       backgroundColor: Colors.black,



       //body
      body: _pages[_currentIndex],


       // bottom mavigationBar Section

       bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
           currentIndex: _currentIndex,
            onTap: changePos,
             unselectedItemColor: Colors.white,


           items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.wechat_sharp,color: Colors.white60,size: 30,),
                    label: "Chats"

              ),

             BottomNavigationBarItem(
                 icon: Icon(Icons.video_call_sharp,color: Colors.white60,size: 30,),
                 label: "Calls"

             ),

             BottomNavigationBarItem(
                 icon: Icon(Icons.people_alt,color: Colors.white60,size: 30,),
                 label: "People"
             ),

             BottomNavigationBarItem(
                 icon: Icon(Icons.web_stories,color: Colors.white60,size: 30,),
                 label: "Stories"
             ),

           ],
       ),

    );
  }
}
