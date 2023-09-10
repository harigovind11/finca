import 'package:finca/domain/models/saving_plans_model.dart';

abstract class SavingPlansDbFunctions {
  Future<void> addTransaction(SavingPlansModel object);
  Future<List<SavingPlansModel>> getAllTransaction();
  Future<void> deleteTransaction(String id);
  Future<void> refresh();
}
