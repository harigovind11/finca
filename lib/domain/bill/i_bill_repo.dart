import 'package:finca/domain/bill/bill.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/firestore_faillure.dart';

abstract class IBillRepository {
  Stream<Either<FirestoreFailure, List<BillEntity>>> watchAll();
  Stream<Either<FirestoreFailure, List<BillEntity>>> watchBill();
  Stream<Either<FirestoreFailure, List<BillEntity>>> watchSubscription();
  Future<Either<FirestoreFailure, Unit>> create(BillEntity billEntity);
  Future<Either<FirestoreFailure, Unit>> update(BillEntity billEntity);
  Future<Either<FirestoreFailure, Unit>> delete(BillEntity billEntity);
}
