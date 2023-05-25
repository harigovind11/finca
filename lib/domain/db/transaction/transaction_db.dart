import 'package:finca/domain/models/transaction/transaction_model.dart';
import 'package:hive_flutter/adapters.dart';

const TRANSACTION_DB_NAME = 'transaction-db';

abstract class TransactionDbFunctions {
  Future<void> addTransaction(TransactionModel object);
  Future<List<TransactionModel>> getAllTransaction();
  Future<void> deleteTransaction(String id);
}

class TransactionDb implements TransactionDbFunctions {
  @override
  Future<void> addTransaction(TransactionModel object) async {
    final _db = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
    _db.put(object.id, object);
  }

  @override
  Future<void> deleteTransaction(String id) async {
    final _db = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
    _db.delete(id);
  }

  @override
  Future<List<TransactionModel>> getAllTransaction() async {
    final _db = await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
    return _db.values.toList();
  }
}
