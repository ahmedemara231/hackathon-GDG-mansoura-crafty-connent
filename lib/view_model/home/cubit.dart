import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled12/view_model/home/states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit(super.initialState);
  static HomeCubit getInstance(context) => BlocProvider.of(context);

  int currentIndex = 0;
  void changeIndex(int newIndex) {
    currentIndex = newIndex;
    emit(ChangeIndexSuccessState());
  }

  List<Map<String, dynamic>> airCondWorkers = [];
  void getAirCondWorkers() {
    airCondWorkers = [
      {'name': 'ahmed', 'age': 30, 'image': 'images/images (1).jpeg'},
      {'name': 'ibrahim', 'age': 33, 'image': 'images/images (2).jpeg'},
      {'name': 'mohamed', 'age': 40, 'image': 'images/images (3).jpeg'},
    ];
  }

  List<Map<String, dynamic>> electricWorkers = [];
  void getElectricWorkers() {
    electricWorkers = [
      {'name': 'hassan', 'age': 22, 'image': 'images/images (1).jpeg'},
      {'name': 'mostafa', 'age': 28, 'image': 'images/images (3).jpeg'},
    ];
  }

  List<List<Map<String, dynamic>>> workers = [];
  void getWorkers() {
    workers = [
      [
        {'name': 'hassan', 'age': 22, 'image': 'images/images (4).jpeg'},
        {'name': 'mostafa', 'age': 28, 'image': 'images/images (5).jpeg'},
      ],
      [
        {'name': 'ahmed', 'age': 30, 'image': 'images/images (1).jpeg'},
        {'name': 'ibrahim', 'age': 33, 'image': 'images/images (2).jpeg'},
        {'name': 'mohamed', 'age': 40, 'image': 'images/images (3).jpeg'},
      ],
    ];
  }
  // Future<void> getAirCondWorkers()async
  // {
  //   airCondWorkers = [];
  //   emit(GetAirContWorkersLoadingState());
  //   await FirebaseFirestore.instance
  //       .collection('mechanic')
  //       .get()
  //       .then((value)
  //   {
  //     value.docs.forEach((element) {
  //       airCondWorkers.add(element.data());
  //     });
  //     emit(GetAirContWorkersSuccessState());
  //     log('$airCondWorkers');
  //   }).catchError((error)
  //   {
  //     emit(GetAirContWorkersErrorState());
  //   });
  // }
}
