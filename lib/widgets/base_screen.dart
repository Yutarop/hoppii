import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:hoppii/screens/home_screen.dart';
import 'package:hoppii/screens/schedule_screen.dart';
import 'package:hoppii/screens/homework_and_test_screen.dart';
import 'package:hoppii/screens/notification_screen.dart';
import 'package:hoppii/screens/settings_screen.dart';

class BaseScreen extends StatefulWidget {
  final int currentIndex;

  BaseScreen([this.currentIndex = 2]);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  late int _currentIndex;

  final List<Widget> _screens = [
    ScheduleScreen(),
    HomeworkAndTestScreen(),
    HomeScreen(),
    NotificationScreen(),
    SettingsScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex;
  }

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
        body: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
        bottomNavigationBar: ConvexAppBar(
          initialActiveIndex: widget.currentIndex,
          items: [
            TabItem(icon: Icons.calendar_month, title: 'Schedule'),
            TabItem(icon: Icons.assignment, title: 'Homework'),
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.settings, title: 'Settings'),
          ],
          onTap: (int index) {
           setState(() {
             _currentIndex = index;
           });
          },
        )
    );
  }
}
