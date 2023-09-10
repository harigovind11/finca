import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'package:finca/app_widget.dart';
import 'package:finca/domain/models/saving_plans_model.dart';
import 'package:finca/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(SavingPlansModelAdapter().typeId)) {
    Hive.registerAdapter(SavingPlansModelAdapter());
  }
  runApp(AppWidget());
}
