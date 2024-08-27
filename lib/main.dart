import 'package:flutter/material.dart';
import 'package:navigation_project/widgets/edit_settings_screen.dart';
import 'package:navigation_project/widgets/home_screen.dart';
import 'package:navigation_project/widgets/initial_screen.dart';
import 'package:navigation_project/widgets/login_screen.dart';
import 'package:navigation_project/widgets/register_screen.dart';
import 'package:navigation_project/widgets/settings_screen.dart';
import 'package:navigation_project/widgets/welcome_screen.dart';

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
        screenRoutes[Screen.welcome]!: (context) => const WelcomeScreen(),
        screenRoutes[Screen.login]!: (context) => const LoginScreen(),
        screenRoutes[Screen.register]!: (context) => const RegisterScreen(),
        screenRoutes[Screen.home]!: (context) => const HomeScreen(),
        screenRoutes[Screen.settings]!: (context) => const SettingsScreen(),
        screenRoutes[Screen.editSettings]!: (context) => const EditSettingsScreen(),
      },
    );
  }
}
