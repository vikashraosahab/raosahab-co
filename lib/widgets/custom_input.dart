import "package:flutter/material.dart";

class CustomInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool ispass;
  final String hintText;


 const CustomInput ({
  Key ? key, 
  required this.textEditingController, 
  required this.ispass,
  required this.hintText,
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
   final inputBorder = OutlineInputBorder(
    borderSide:Divider.createBorderSide(context),
   );
    return TextField(
      controller:textEditingController,
      decoration:InputDecoration(
        hintText:hintText,
        hintStyle:const TextStyle(
          color:Colors.grey,
          fontSize:22,
          fontWeight:FontWeight.w400,
        ),
        border:inputBorder,
        errorBorder:inputBorder,
        filled:true,
        contentPadding:const EdgeInsets.all(5),
        focusedBorder:inputBorder,
      ),
      obscureText: ispass,
    );
  }
}