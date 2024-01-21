import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:roasahabandco/db/mydatabase.dart";
import "package:roasahabandco/screens/main_screen.dart";
import "package:roasahabandco/screens/splash_screen.dart";

void main (){
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget{
  const MyApp({Key ? key}):super(key:key);
  @override
   Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) => Books(),
      child:const MaterialApp(
        debugShowCheckedModeBanner:false,
        home:Scaffold(
          body:MainScreen(),
        ),
      ),
    );
  }
}