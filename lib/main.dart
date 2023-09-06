import 'package:finca/app_widget.dart';
import 'package:finca/domain/models/category/category_model.dart';
import 'package:finca/domain/models/money_details/money_details_model.dart';
import 'package:finca/domain/models/saving_plans/saving_plans_model.dart';
import 'package:finca/domain/models/transaction/transaction_model.dart';
import 'package:finca/injectable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(TransactionModelAdapter().typeId)) {
    Hive.registerAdapter(TransactionModelAdapter());
  }
  if (!Hive.isAdapterRegistered(MoneyDetailsModelAdapter().typeId)) {
    Hive.registerAdapter(MoneyDetailsModelAdapter());
  }
  if (!Hive.isAdapterRegistered(CategoryTypeAdapter().typeId)) {
    Hive.registerAdapter(CategoryTypeAdapter());
  }
  if (!Hive.isAdapterRegistered(SavingPlansModelAdapter().typeId)) {
    Hive.registerAdapter(SavingPlansModelAdapter());
  }
  runApp(AppWidget());
}
