import 'package:finca/domain/models/category/category_model.dart';
import 'package:finca/domain/models/transaction/transaction_model.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(TransactionModelAdapter().typeId)) {
    Hive.registerAdapter(TransactionModelAdapter());
  }
  if (!Hive.isAdapterRegistered(CategoryTypeAdapter().typeId)) {
    Hive.registerAdapter(CategoryTypeAdapter());
  }
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
