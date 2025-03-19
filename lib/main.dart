import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hoppii/screens/home_screen.dart';
import 'package:hoppii/screens/homework_and_test_screen.dart';
import 'package:hoppii/screens/login_screen.dart';
import 'package:hoppii/screens/notification_screen.dart';
import 'package:hoppii/screens/schedule_screen.dart';
import 'package:hoppii/screens/settings_screen.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        HomeworkAndTestScreen.id: (context) => HomeworkAndTestScreen(),
        ScheduleScreen.id: (context) => ScheduleScreen(),
        NotificationScreen.id: (context) => NotificationScreen(),
        SettingsScreen.id: (context) => ScheduleScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}