import 'package:flutter/material.dart';
import 'package:navigation_project/widgets/navigation_screens/edit_settings_screen.dart';
import 'package:navigation_project/widgets/navigation_screens/home_screen.dart';
import 'package:navigation_project/widgets/navigation_screens/initial_screen.dart';
import 'package:navigation_project/widgets/navigation_screens/login_screen.dart';
import 'package:navigation_project/widgets/navigation_screens/register_screen.dart';
import 'package:navigation_project/widgets/navigation_screens/settings_screen.dart';
import 'package:navigation_project/widgets/navigation_screens/welcome_screen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Flow',
      initialRoute: screenRoutes[Screen.initial],
      routes: {
        screenRoutes[Screen.initial]!: (context) => const InitialScreen(),
        '${screenRoutes[Screen.initial]}${screenRoutes[Screen.welcome]}':
            (context) => const WelcomeScreen(),
        '${screenRoutes[Screen.initial]}${screenRoutes[Screen.login]}':
            (context) => const LoginScreen(),
        '${screenRoutes[Screen.initial]}${screenRoutes[Screen.register]}':
            (context) => const RegisterScreen(),
        '${screenRoutes[Screen.initial]}${screenRoutes[Screen.home]}':
            (context) => const HomeScreen(),
        '${screenRoutes[Screen.initial]}${screenRoutes[Screen.settings]}':
            (context) => const SettingsScreen(),
        '${screenRoutes[Screen.initial]}${screenRoutes[Screen.editSettings]}':
            (context) => const EditSettingsScreen(),
      },
    );
  }
}
