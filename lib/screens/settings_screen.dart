import 'package:flutter/material.dart';
import 'package:hoppii/widgets/base_screen.dart';

class SettingsScreen extends StatelessWidget {
  static const String id = 'settings_screen';
  static const int index = 4;
  const SettingsScreen({super.key});

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
