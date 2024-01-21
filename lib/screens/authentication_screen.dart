import "package:flutter/material.dart";
import "package:roasahabandco/widgets/login_widget.dart";
import "package:roasahabandco/widgets/signin_widget.dart";

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key ? key}):super(key:key);
  @override 
  AuthenticationStateScreen createState()=> AuthenticationStateScreen();
}

class AuthenticationStateScreen extends State <AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color:Colors.blueAccent,
        ),
        Container(
          margin:const EdgeInsets.only(top:100,bottom:100,left:30,right:30),
          color:Colors.white,
          padding:const EdgeInsets.all(20),
          child:const DefaultTabController(
            length:2,
            child:Scaffold(
              appBar:TabBar(
                indicatorColor: Color.fromARGB(200, 17, 17, 15),
                //indicatorSize:30,
                labelPadding:EdgeInsets.all(5),
                tabs: [
                 Tab(
                  child:Text("SIGN IN",style:TextStyle(
                  color:Colors.black,
                  fontSize: 26,
                  fontWeight:FontWeight.w900,
                  letterSpacing:1.4
                 ))),      
                 Tab(
                  child:Text("LOG IN",style:TextStyle(
                  color:Colors.black,
                  fontSize:26,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.4
                 )))
                ]
              ),
              body:TabBarView(
                children:[
                 SigninWidget(
                 ),
                  LoginWidget(),
                ]
              )
            ),
          ),
        ),
        Positioned(
          left:70,
          right:70,
          bottom:75,
          child:Container(
          height:60,
          width:250,
          color:Colors.black,
          child:const Center(
            child:Text("SUBMIT",style:TextStyle(
              color:Colors.white,
              fontSize:25,
              letterSpacing:1.1,
              fontWeight:FontWeight.w500,
            )),
          ),
        )),
      ],
    );
  }
}