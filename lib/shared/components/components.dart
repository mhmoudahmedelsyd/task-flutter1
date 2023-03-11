import 'package:courestest/login_task/customClipperClass.dart';
import 'package:flutter/material.dart';

defaultTextForm({
  required TextEditingController controller,
  required FormFieldValidator validator,
  required TextInputType type,
  required String label,
  required IconData prefix,
  bool isPassword = false,
  String obscuringCharacter='*',
  IconData? suffix,
  VoidCallback? suffixPressed ,
})=>TextFormField(
  obscuringCharacter:obscuringCharacter,
  controller: controller,
  obscureText:isPassword ,
  validator: validator,
  keyboardType: type,
  decoration: InputDecoration(
    labelText: label,
    border: OutlineInputBorder(),
    prefixIcon: Icon(
      prefix,
    ),
    suffixIcon: IconButton(
      icon: Icon(
        suffix,
      ),
      onPressed: suffixPressed,
    ),


  ),

);


clipPath({
  required String title,
})=>ClipPath(
  clipper: Cliper(),
  child: Container(
    color: Colors.deepPurple,
    height: 220,
    child:  Center(
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w500),
      ),
    ),
  ),
);

navigateAndRemove(context,Widget screen)=>  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
        builder: (context) => screen),
    result: (route) => false);

