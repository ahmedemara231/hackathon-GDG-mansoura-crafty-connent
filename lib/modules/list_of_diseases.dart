import 'package:flutter/material.dart';
import 'package:untitled12/modules/text.dart';

class Diseases extends StatelessWidget {
  const Diseases({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Image.asset('images/sick-11-17_14-36-57.jpg'),
            // MyText(text: 'sick',maxLines: 3,)
          ],
        ),
      ),
    );
  }
}
