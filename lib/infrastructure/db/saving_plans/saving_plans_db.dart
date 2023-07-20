import 'package:finca/core/constants.dart';
import 'package:finca/domain/models/saving_plans/saving_plans_model.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class SavingPlansDbFunctions {
  Future<void> addTransaction(SavingPlansModel object);
  Future<List<SavingPlansModel>> getAllTransaction();
  Future<void> deleteTransaction(String id);
  Future<void> refresh();
}

class SavingPlansDb implements SavingPlansDbFunctions {
  SavingPlansDb._internal();
  static SavingPlansDb instance = SavingPlansDb._internal();
  factory SavingPlansDb() {
    return instance;
  }

  ValueNotifier<List<SavingPlansModel>> savingPlansValueNotifier =
      ValueNotifier([]);

  @override
  Future<void> addTransaction(SavingPlansModel object) async {
    final _db = await Hive.openBox<SavingPlansModel>(SAVING_PLANS_DB_NAME);
    _db.put(object.id, object);
  }

  @override
  Future<void> deleteTransaction(String id) async {
    final _db = await Hive.openBox<SavingPlansModel>(SAVING_PLANS_DB_NAME);
    _db.delete(id);
    refresh();
  }

  @override
  Future<List<SavingPlansModel>> getAllTransaction() async {
    final _db = await Hive.openBox<SavingPlansModel>(SAVING_PLANS_DB_NAME);
    return _db.values.toList();
  }

  @override
  Future<void> refresh() async {
    final _list = await getAllTransaction();
    savingPlansValueNotifier.value.clear();
    savingPlansValueNotifier.value.addAll(_list);
    savingPlansValueNotifier.notifyListeners();
  }
}
