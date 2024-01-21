import "package:flutter/material.dart";
import "package:roasahabandco/widgets/custom_input.dart";

class LoginWidget extends StatefulWidget {
  const LoginWidget ({Key ? key}):super(key:key);
  @override 
  LoginWidgetState createState()=> LoginWidgetState();
}

class LoginWidgetState extends State <LoginWidget> {
  final TextEditingController emailLogTextEditingController = TextEditingController();
  final TextEditingController passwordLogTextEditingController = TextEditingController();

  @override 
   Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          const SizedBox(height:50),
          CustomInput(
            textEditingController:emailLogTextEditingController,
            ispass:true,
            hintText:"Enter your email",
          ),
          const SizedBox(height:24),
          CustomInput(
            textEditingController:passwordLogTextEditingController,
            ispass:true,
            hintText:"Enter your password",
          ),
        ],
      ),
    );
  }
}