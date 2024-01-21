import "package:flutter/material.dart";
import "package:roasahabandco/screens/authentication_screen.dart";
import "../screens/main_screen.dart";


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key ? key}):super(key:key);
  @override 
  SplashScreenState createState()=> SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override 
   void initState() {
     Future.delayed(
      const Duration(seconds: 4),(){
        Navigator.pushReplacement(
          context,MaterialPageRoute(
            builder:(go)=>const AuthenticationScreen()
        ));
      }
     );
     super.initState();
   }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Center(
        child:Text("RAOSAHAB & CO",style:TextStyle(
          color:Colors.grey,
          fontSize:29,
        ))
      ),
    );
  }
}