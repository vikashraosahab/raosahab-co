import "package:flutter/material.dart";
import '../widgets/custom_input.dart';

class SigninWidget extends StatefulWidget {
  const SigninWidget({Key ? key}):super(key:key);
  @override 
   SignInWidgetState createState ()=> SignInWidgetState();
}

class SignInWidgetState extends State <SigninWidget> {
  final TextEditingController nameTextEditingController = TextEditingController();
  final TextEditingController emailTextEditingController = TextEditingController();
  final TextEditingController usernameTextEditingController = TextEditingController();
  final TextEditingController passwordTextEditingController = TextEditingController();
  final TextEditingController confirmPassTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Container(
   // padding:const EdgeInsets.all(10),
    child:Column(
      children: [
        const SizedBox(height:60),
        CustomInput(
          textEditingController:nameTextEditingController,
          ispass:false,
          hintText:"Enter user name ",
        ),
        const SizedBox(height:24),
         CustomInput(
          textEditingController:usernameTextEditingController, 
          ispass:false,
          hintText:"Enter user username ",
        ),
        const SizedBox(height:24),
         CustomInput(
          textEditingController:emailTextEditingController, 
          ispass:false,
          hintText:"Enter user email ",
        ),
        const SizedBox(height:24),
         CustomInput(
          textEditingController:passwordTextEditingController,
          ispass:true,
          hintText:"Enter user password ",
        ),
         const SizedBox(height:24),
         CustomInput(
          textEditingController:confirmPassTextEditingController,
          ispass:true,
          hintText:"confirm password ",
        )
      ],
    ),
   );
  }
}