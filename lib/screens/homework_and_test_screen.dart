import 'package:flutter/material.dart';
import 'package:hoppii/widgets/base_screen.dart';

class HomeworkAndTestScreen extends StatelessWidget {
  static const String id = 'homework_and_test_screen';
  static const int index = 1;
  const HomeworkAndTestScreen({super.key});

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
