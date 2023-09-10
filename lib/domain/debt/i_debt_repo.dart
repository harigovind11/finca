import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/domain/debt/debt.dart';

abstract class IDebtRepository {
  Stream<Either<FirestoreFailure, List<DebtEntity>>> watchAll();
  Stream<Either<FirestoreFailure, List<DebtEntity>>> watchDebt();
  Stream<Either<FirestoreFailure, List<DebtEntity>>> watchCredit();
  Future<Either<FirestoreFailure, Unit>> create(DebtEntity debtEnity);
  Future<Either<FirestoreFailure, Unit>> update(DebtEntity debtEnity);
  Future<Either<FirestoreFailure, Unit>> delete(DebtEntity debtEnity);
}
