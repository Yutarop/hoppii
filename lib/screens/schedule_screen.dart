import 'package:flutter/material.dart';
import 'package:hoppii/widgets/base_screen.dart';

class ScheduleScreen extends StatelessWidget {
  static const String id = 'schedule_screen';
  static const int index = 0;
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      currentIndex: index,
      child: Center(
        child: Text(
          'HomeWork',
        ),
      ),
    );
  }
}
