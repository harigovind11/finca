import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/domain/saving_plan/saving_plan.dart';

abstract class ISavingPlanRepository {
  Stream<Either<FirestoreFailure, List<SavingPlanEntity>>> watchAll();
  Future<Either<FirestoreFailure, Unit>> create(
      SavingPlanEntity savingPlanEntity);
  Future<Either<FirestoreFailure, Unit>> update(
      SavingPlanEntity savingPlanEntity);
  Future<Either<FirestoreFailure, Unit>> delete(
      SavingPlanEntity savingPlanEntity);
}
