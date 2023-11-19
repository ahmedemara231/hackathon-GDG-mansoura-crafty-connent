import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../models/models.dart';
import '../../../modules/text.dart';
import '../../../modules/tff.dart';

class SpecificWorkers extends StatefulWidget {
  SpecificWorkers({super.key});

  @override
  State<SpecificWorkers> createState() => _SpecificWorkersState();
}

class _SpecificWorkersState extends State<SpecificWorkers> {
  final searchCont = TextEditingController();

  late List<WorkerModel> workers;

  @override
  void initState() {
    workers =
    [
      WorkerModel(workerName: 'احمد', workerImage: 'image 127.png'),
      WorkerModel(workerName: 'محمد', workerImage: 'image 127.png'),
      WorkerModel(workerName: 'محمود', workerImage: 'image 127.png'),
      WorkerModel(workerName: 'ابراهيم', workerImage: 'image 127.png'),
      WorkerModel(workerName: 'ابو حسن', workerImage: 'image 127.png'),
      WorkerModel(workerName: 'ابو فلة', workerImage: 'image 127.png'),
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: HexColor('FFF9F6'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 10 ),
                child: Tff(
                  prefixIcon: Icons.search,
                  hintText: 'بحث',
                  controller: searchCont,
                  validator: null,
                  obscureText: false,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyText(
                    text: 'ميكانيكي',
                    color: HexColor('DD8560'),
                    fontSize: 18,
                    fontWeight: FontWeight.bold ,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder:(context, index) => InkWell(
                    onTap: (){},
                    child: workers[index],
                  ),
                  itemCount: workers.length,
                ),
              )
            ],
          ),
        ),
      ),
      // body: ,
    );
  }
}
