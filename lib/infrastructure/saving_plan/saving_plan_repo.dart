import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/domain/saving_plan/i_saving_plan_repo.dart';
import 'package:finca/domain/saving_plan/saving_plan.dart';
import 'package:finca/infrastructure/core/firebase_helpers.dart';
import 'package:finca/infrastructure/saving_plan/saving_plan_dtos.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: ISavingPlanRepository)
class SavingPlanRepo implements ISavingPlanRepository {
  final FirebaseFirestore _firestore;

  SavingPlanRepo(this._firestore);
  @override
  Future<Either<FirestoreFailure, Unit>> create(
      SavingPlanEntity savingPlanEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final savingPlanDto = SavingPlanDto.fromDomain(savingPlanEntity);
      final json = savingPlanDto.toJson();
      await userDoc.savingPlanCollection.doc(savingPlanDto.id).set(json);
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirestoreFailure.insufficientPermissions());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirestoreFailure, Unit>> update(
      SavingPlanEntity savingPlanEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final savingPlanDto = SavingPlanDto.fromDomain(savingPlanEntity);
      final json = savingPlanDto.toJson();
      await userDoc.savingPlanCollection.doc(savingPlanDto.id).update(json);
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirestoreFailure.insufficientPermissions());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirestoreFailure, Unit>> delete(
      SavingPlanEntity savingPlanEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final savingPlanDto = SavingPlanDto.fromDomain(savingPlanEntity);

      await userDoc.savingPlanCollection.doc(savingPlanDto.id).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirestoreFailure.insufficientPermissions());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const FirestoreFailure.unableToUpdate());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<FirestoreFailure, List<SavingPlanEntity>>> watchAll() {
    final _firestoreInstance = FirebaseFirestore.instance;
    final user = FirebaseAuth.instance.currentUser;
    final userDoc = _firestoreInstance.collection('users').doc(user?.uid);
    return userDoc.savingPlanCollection
        .orderBy('date', descending: true)
        .snapshots()
        .map((querySnapshot) {
      return right<FirestoreFailure, List<SavingPlanEntity>>(
        querySnapshot.docs
            .map((doc) => SavingPlanEntity.fromSnapshot(doc))
            .toList(),
      );
    }).onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirestoreFailure.insufficientPermissions());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    });
  }
}
