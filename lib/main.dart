import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'presentation/screens/login_screen.dart';
import 'presentation/screens/splash_screen.dart';
import 'presentation/screens/registration_screen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('money');
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
