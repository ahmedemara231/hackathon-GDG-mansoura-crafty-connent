import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled12/view/main_screens/Home/specific_workers.dart';
import '../../../models/models.dart';
import '../../../modules/text.dart';
import '../../../modules/tff.dart';


class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final searchCont = TextEditingController();
   late List<WorkerModel> workers;
   
   @override
  void initState() {
     workers = 
     [
       WorkerModel(workerName: 'نقّاش', workerImage: 'nakkash.png'),
       WorkerModel(workerName: 'ميكانيكي', workerImage: 'mechanic.png'),
       WorkerModel(workerName: 'نجّار', workerImage: 'naggar.png'),
       WorkerModel(workerName: 'كهربائي', workerImage: 'electric.png'),
       WorkerModel(workerName: 'سبّاك', workerImage: 'sappak.png'),
       WorkerModel(workerName: 'عامل بناء', workerImage: 'building.png'),
     ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    text: 'اختر الحرفة التي تريدها',
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
                      onTap: ()
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SpecificWorkers(),
                            ),
                        );
                      },
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
