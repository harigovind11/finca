import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/welcome/screen_welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'presentation/screens/login/screen_login.dart';
import 'presentation/screens/splash/screen_splash.dart';
import 'presentation/screens/signup/screen_registration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Finca());
}

class Finca extends StatelessWidget {
  Finca({Key? key}) : super(key: key);

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}
