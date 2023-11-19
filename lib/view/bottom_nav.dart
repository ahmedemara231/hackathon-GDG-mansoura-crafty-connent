import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled12/view/main_screens/notifications.dart';
import 'package:untitled12/view/main_screens/profile.dart';
import 'package:untitled12/view/main_screens/setting.dart';
import 'package:untitled12/view_model/home/cubit.dart';
import 'package:untitled12/view_model/home/states.dart';

import 'main_screens/Home/home.dart';

class BottomNav extends StatelessWidget {
   BottomNav({super.key});

  List<Widget> mainScreens =
  [
    Home(),
    Notifications(),
    Setting(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeStates>(
      builder: (context, state)
      {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedIconTheme: IconThemeData(
              size: 30,
              color: HexColor('DD8560'),
            ),
            unselectedIconTheme: const IconThemeData(
              size: 30,
              color: Colors.grey,
            ),
            currentIndex: HomeCubit.getInstance(context).currentIndex,
            onTap: (newTap)
            {
              HomeCubit.getInstance(context).changeIndex(newTap);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.notifications_none),label: 'Notification'),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
            ],
          ),
          body: mainScreens[HomeCubit.getInstance(context).currentIndex],
        );
      },
    );
  }
}
