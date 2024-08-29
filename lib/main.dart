import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_project/widgets/go_router_screens/edit_settings_screen.dart';
import 'package:navigation_project/widgets/go_router_screens/home_screen.dart';
import 'package:navigation_project/widgets/go_router_screens/initial_screen.dart';
import 'package:navigation_project/widgets/go_router_screens/login_screen.dart';
import 'package:navigation_project/widgets/go_router_screens/register_screen.dart';
import 'package:navigation_project/widgets/go_router_screens/welcome_screen.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    initialLocation: screenRoutes[Screen.initial],
    routes: [
      GoRoute(
        path: screenRoutes[Screen.initial]!,
        builder: (context, state) => const InitialScreen(),
      ),
      GoRoute(
        path: '${screenRoutes[Screen.initial]}${screenRoutes[Screen.welcome]}', 
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: '${screenRoutes[Screen.initial]}${screenRoutes[Screen.login]}',  
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '${screenRoutes[Screen.initial]}${screenRoutes[Screen.register]}',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '${screenRoutes[Screen.initial]}${screenRoutes[Screen.home]}',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: screenRoutes[Screen.editSettings]!,
            builder: (context, state) => const EditSettingsScreen(),
          ),
        ],
      ),
    ],
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter GoRouter Navigation Demo',
      routerConfig: _router,
    );
  }
}
