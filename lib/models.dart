import 'package:flutter/material.dart';

import 'modules/text.dart';

class WorkerModel extends StatelessWidget {

  String workerName;
  String workerImage;

   WorkerModel({super.key,
    required this.workerName,
    required this.workerImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          MyText(text: workerName,fontSize: 18,fontWeight: FontWeight.w600),
          const SizedBox(
            height: 10,
          ),
          Expanded(child: Image.asset('images/$workerImage'))
        ],
      ),
    );
  }
}
