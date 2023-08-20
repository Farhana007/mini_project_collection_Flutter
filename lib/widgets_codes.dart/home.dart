
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'homePageMain.dart';
import 'post.dart';
import 'account.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentPos = 0;

  void changePos (int index){
    setState(() {
      _currentPos = index;
    });
  }

  final List <Widget> _pages = [
     PostPage(),
     HomePageMain(),
     AccountPage(),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: "App".text.make(),
       centerTitle: true,

       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.share_outlined))
       ],
     ),

      drawer: Drawer(
         child: Container(
             child: Column(
               children: [
                 DrawerHeader(child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     "Home".text.size(25).make(),
                     Icon(Icons.account_circle_sharp,size: 40,)
                   ],
                 )),

                 ListTile(

                   leading: Icon(Icons.home),
                   title: "Home".text.make(),
                   onTap: (){

                   },

                 ),

                 ListTile(

                   leading: Icon(Icons.home),

                   title: "Home".text.make(),
                   onTap: (){

                   },

                 ),

                 ListTile(

                   leading: Icon(Icons.home),
                   title: "Home".text.make(),
                   onTap: (){

                   },

                 )
               ],
             ),
           
           
         ),
      ),


      body: _pages[_currentPos],
      
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: _currentPos,
         onTap: changePos,
         type: BottomNavigationBarType.fixed,
          items:[
             BottomNavigationBarItem(icon: Icon(Icons.library_music_sharp),label: "Music"),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded),label: "Account"),
          ] ),
    );
  }
}
