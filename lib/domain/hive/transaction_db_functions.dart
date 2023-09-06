import 'package:finca/domain/models/transaction/transaction_model.dart';

abstract class TransactionDbFunctions {
  Future<void> openBoxes();
  Future<void> addTransaction(TransactionModel object);
  Future<List<TransactionModel>> getAllTransaction();
  Future<void> deleteTransaction(String id);
  Future<void> refresh();
  Future<void> recentTransaction();
}
