import 'package:finca/domain/transaction/transaction.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/firestore_faillure.dart';

abstract class ITransactionRepository {
  Stream<Either<FirestoreFailure, List<TransactionEntity>>> watchAll();
  Stream<Either<FirestoreFailure, List<TransactionEntity>>>
      watchIncomeTransaction();
  Stream<Either<FirestoreFailure, List<TransactionEntity>>>
      watchExpenseTransaction();
  Future<Either<FirestoreFailure, Unit>> create(
      TransactionEntity transactionEntity);
  Future<Either<FirestoreFailure, Unit>> update(
      TransactionEntity transactionEntity);
  Future<Either<FirestoreFailure, Unit>> delete(
      TransactionEntity transactionEntity);
}
