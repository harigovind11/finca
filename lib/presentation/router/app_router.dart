import 'package:finca/presentation/screens/home_screen.dart';
import 'package:finca/presentation/screens/login_screen.dart';
import 'package:finca/presentation/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screens/splash_screen.dart';
import '../screens/welcome_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => SplashScreen(title: 'SplashScreen'),
        );
        break;
      case '/welcome':
        return MaterialPageRoute(
          builder: (_) => WelcomeScreen(title: 'WelcomeScreen'),
        );
        break;

      case '/signup':
        return MaterialPageRoute(
          builder: (_) => RegistrationScreen(title: 'SignupScreen'),
        );
        break;
      case '/login':
        return MaterialPageRoute(
          builder: (_) => LoginScreen(title: 'LoginScreen'),
        );
        break;
      case '/home':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(title: 'HomeScreen'),
        );
        break;
      default:
        return null;
    }
  }
}
