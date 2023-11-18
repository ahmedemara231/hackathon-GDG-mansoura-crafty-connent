import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Tff extends StatelessWidget {
  String hintText;
  IconData prefixIcon;
  var controller;
  bool obscureText;
  String? Function(String?)? validator;
   Tff({super.key,
     required this.prefixIcon,
     required this.hintText,
     required this.controller,
     required this.validator,
     required this.obscureText,
   });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller,
      style: const TextStyle(
        fontSize: 20
      ),
      obscureText:obscureText ,
      validator: validator,

      decoration: InputDecoration(
        errorStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
        prefixIcon: Icon(prefixIcon,color: HexColor('DD8560'),),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: HexColor('DD8560'),
            width: 1.5
          )
        )
      ),
    );
  }
}
