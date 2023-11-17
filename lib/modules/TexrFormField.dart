import 'package:flutter/material.dart';

class Tff extends StatelessWidget {

  String text;
  String hintText;
  TextEditingController controller;
  bool? obscureText;
   Tff({super.key,
     required this.text,
     required this.hintText,
     required this.controller,
     this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
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
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              controller: controller,
              obscureText: obscureText?? false,
              validator: (value) {
                if(value!.isEmpty)
                  {
                    return 'This Field is required';
                  }
                return null;
              },
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500
              ),

              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                  fontSize: 18,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
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
