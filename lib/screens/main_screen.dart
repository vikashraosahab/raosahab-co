import "package:flutter/material.dart";
import "../utilis/pages.dart";

class MainScreen extends StatefulWidget {
  const MainScreen({Key ? key}):super(key:key);
  @override 
  MainScreenState createState()=> MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        alignment:Alignment.center,
        child:Text(pages[index].toString())
      ),
      bottomNavigationBar:BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(icon:Icon(Icons.home,color:Colors.black),label:"home"),
          BottomNavigationBarItem(icon:Icon(Icons.search,color:Colors.black),label:"search"),
          BottomNavigationBarItem(icon:Icon(Icons.library_add,color:Colors.black),label:"library"),
          BottomNavigationBarItem(icon:Icon(Icons.settings_applications_rounded,color:Colors.black),label:"setting")

        ],
        currentIndex: index,
      ),
    );
  }
  
}