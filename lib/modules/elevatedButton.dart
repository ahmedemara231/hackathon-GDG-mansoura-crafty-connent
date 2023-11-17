import 'package:flutter/material.dart';
import 'package:untitled12/modules/text.dart';

class ElevButton extends StatelessWidget {

  String text;
  IconData icon;
   ElevButton ({super.key,
    required this.text,
     required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          backgroundColor: Colors.blue,
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(text: text,color: Colors.black,),
              Icon(icon,color: Colors.black,),
            ]),
        ),
      ),
    );
  }
}
