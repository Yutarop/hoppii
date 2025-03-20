import 'package:flutter/material.dart';
import 'package:hoppii/widgets/base_screen.dart';

class NotificationScreen extends StatelessWidget {
  static const String id = 'notification_screen';
  static const int index = 3;
  const NotificationScreen({super.key});

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
