import 'package:finca/domain/transaction/transaction.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/transaction/transaction_faillure.dart';

abstract class ITransactionRepository {
  Stream<Either<TransactionFailure, KtList<TransactionCard>>> watchAll();

  Future<Either<TransactionFailure, Unit>> create(TransactionCard transaction);

  Future<Either<TransactionFailure, Unit>> update(TransactionCard transaction);

  Future<Either<TransactionFailure, Unit>> delete(TransactionCard transaction);
}
