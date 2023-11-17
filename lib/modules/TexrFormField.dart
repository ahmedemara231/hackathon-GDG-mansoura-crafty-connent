import 'package:flutter/material.dart';

class Tff extends StatelessWidget {

  String text;
  String? hintText;
  TextEditingController controller;
  bool? obscureText;
  IconData? prefixIcon;
  Widget? suffixIcon;

   Tff({super.key,
     required this.text,
     this.hintText,
     required this.controller,
     this.obscureText,
     this.prefixIcon,
     this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(.08),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              controller: controller,
              obscureText: obscureText?? false,
              validator: (value) {
                if(value!.isEmpty)
                  {
                    return 'This Field is required';
                  }
                return null ;
              },
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500
              ),

              decoration: InputDecoration(
                prefixIcon: Icon(prefixIcon),
                suffixIcon: suffixIcon,
                hintText: hintText,
                hintStyle: const TextStyle(
                  fontSize: 18,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
