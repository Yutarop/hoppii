import 'package:flutter/material.dart';
import 'package:hoppii/widgets/base_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  static const int index = 2;

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      currentIndex: index,
      child: Center(
        child: Text(
          'Home Screen',
        ),
      )
    );
  }
}
