import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:hoppii/screens/home_screen.dart';
import 'package:hoppii/screens/schedule_screen.dart';
import 'package:hoppii/screens/homework_and_test_screen.dart';
import 'package:hoppii/screens/notification_screen.dart';
import 'package:hoppii/screens/settings_screen.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final int currentIndex;

  BaseScreen({required this.child, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Hoppii',
            style: TextStyle(
              color: Colors.black,
            ),
          ),),
        body: child,
        bottomNavigationBar: ConvexAppBar(
          initialActiveIndex: currentIndex,
          items: [
            TabItem(icon: Icons.calendar_month, title: 'Schedule'),
            TabItem(icon: Icons.assignment, title: 'Homework'),
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.settings, title: 'Settings'),
          ],
          onTap: (int i) {
            switch(i){
              case 0:
                Navigator.pushNamed(context, ScheduleScreen.id);
                break;
              case 1:
                Navigator.pushNamed(context, HomeworkAndTestScreen.id);
                break;
              case 2:
                Navigator.pushNamed(context, HomeScreen.id);
                break;
              case 3:
                Navigator.pushNamed(context, NotificationScreen.id);
                break;
              default:
                Navigator.pushNamed(context, SettingsScreen.id);
                break;
            }
          },
        )
    );
  }
}
