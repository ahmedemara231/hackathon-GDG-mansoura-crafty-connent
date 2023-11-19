import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled12/view/bottom_nav.dart';
import 'package:untitled12/view/login-reg_screens/login.dart';
import 'package:untitled12/view_model/home/cubit.dart';
import 'package:untitled12/view_model/home/states.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:
      [
        BlocProvider(create: (context) => HomeCubit(HomeInitialState()),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNav(),
      ),
    );
  }
}
