import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finca/domain/transaction/transaction.dart';

import 'package:dartz/dartz.dart';
import 'package:finca/domain/transaction/transaction_faillure.dart';

abstract class ITransactionRepository {
  Stream<Either<TransactionFailure, List<TransactionEntity>>> watchAll();
  Stream<Either<TransactionFailure, List<TransactionEntity>>>
      watchIncomeTransaction();
  Stream<Either<TransactionFailure, List<TransactionEntity>>>
      watchExpenseTransaction();
  Future<Either<TransactionFailure, Unit>> create(
      TransactionEntity transactionEntity);

  Future<Either<TransactionFailure, Unit>> update(
      TransactionEntity transactionEntity);

  Future<Either<TransactionFailure, Unit>> delete(
      TransactionEntity transactionEntity);
}
