import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled12/view/main_screens/Home/workerProfile.dart';
import 'package:untitled12/view_model/home/cubit.dart';
import 'package:untitled12/view_model/home/states.dart';

import '../../../models/models.dart';
import '../../../modules/text.dart';
import '../../../modules/tff.dart';

class SpecificWorkers extends StatefulWidget {

  List<Map<String,dynamic>> workers;
  SpecificWorkers({super.key,
    required this.workers,
  });

  @override
  State<SpecificWorkers> createState() => _SpecificWorkersState();
}

class _SpecificWorkersState extends State<SpecificWorkers> {
  final searchCont = TextEditingController();

  @override
  void initState() {
    HomeCubit.getInstance(context).getAirCondWorkers();
    // workers =
    // [
    //   WorkerModel(workerName: 'احمد', workerImage: 'image 127.png'),
    //   WorkerModel(workerName: 'محمد', workerImage: 'image 127.png'),
    //   WorkerModel(workerName: 'محمود', workerImage: 'image 127.png'),
    //   WorkerModel(workerName: 'ابراهيم', workerImage: 'image 127.png'),
    //   WorkerModel(workerName: 'ابو حسن', workerImage: 'image 127.png'),
    //   WorkerModel(workerName: 'ابو فلة', workerImage: 'image 127.png'),
    // ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeStates>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(),
        backgroundColor: HexColor('FFF9F6'),
        body: state is GetAirContWorkersLoadingState ?
          const Center(
            child: CircularProgressIndicator(),
          ):
          SafeArea(
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
                      onTap: ()
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WorkerProfile(
                                name: widget.workers[index]['name'],
                                image: widget.workers[index]['image'],
                              ),
                            ),
                        );
                      },
                      child: Card(
                        child: Column(
                          children: [
                            MyText(
                              text: widget.workers[index]['name'],
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    widget.workers[index]['image']
                                  ),
                                ),
                            )
                          ],
                        ),
                      ),
                    ),
                    itemCount: widget.workers.length,
                  ),
                )
              ],
            ),
          ),
        ),
        // body: ,
      ),
    );
  }
}
