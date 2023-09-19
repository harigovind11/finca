import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/bill/bill.dart';
import 'package:finca/domain/bill/i_bill_repo.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/infrastructure/bill/bill_dtos.dart';
import 'package:finca/infrastructure/core/firebase_helpers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IBillRepository)
class BillRepo implements IBillRepository {
  final FirebaseFirestore _firestore;

  BillRepo(this._firestore);
  @override
  Future<Either<FirestoreFailure, Unit>> create(BillEntity billEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final billDto = BillDto.fromDomain(billEntity);
      final json = billDto.toJson();
      await userDoc.billCollection.doc(billDto.id).set(json);
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
  Future<Either<FirestoreFailure, Unit>> update(BillEntity billEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final billDto = BillDto.fromDomain(billEntity);
      final json = billDto.toJson();
      await userDoc.billCollection.doc(billDto.id).update(json);
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
  Future<Either<FirestoreFailure, Unit>> delete(BillEntity billEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final billDto = BillDto.fromDomain(billEntity);
      await userDoc.billCollection.doc(billDto.id).delete();
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
  Stream<Either<FirestoreFailure, List<BillEntity>>> watchAll() {
    final _firestoreInstance = FirebaseFirestore.instance;
    final user = FirebaseAuth.instance.currentUser;
    final userDoc = _firestoreInstance.collection('users').doc(user?.uid);
    return userDoc.billCollection
        .orderBy(
          'serverTimeStamp',
          descending: true,
        )
        .snapshots()
        .map(
          (querySnapshot) => right<FirestoreFailure, List<BillEntity>>(
            querySnapshot.docs
                .map((doc) => BillEntity.fromSnapshot(doc))
                .toList(),
          ),
        )
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirestoreFailure.insufficientPermissions());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<FirestoreFailure, List<BillEntity>>> watchBill() {
    final _firestoreInstance = FirebaseFirestore.instance;
    final user = FirebaseAuth.instance.currentUser;
    final userDoc = _firestoreInstance.collection('users').doc(user?.uid);
    return userDoc.billCollection
        .where(
          'billType',
          isEqualTo: 'bill',
        )
        .orderBy(
          'serverTimeStamp',
          descending: true,
        )
        .snapshots()
        .map(
          (querySnapshot) => right<FirestoreFailure, List<BillEntity>>(
            querySnapshot.docs
                .map((doc) => BillEntity.fromSnapshot(doc))
                .toList(),
          ),
        )
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirestoreFailure.insufficientPermissions());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<FirestoreFailure, List<BillEntity>>> watchSubscription() {
    final _firestoreInstance = FirebaseFirestore.instance;
    final user = FirebaseAuth.instance.currentUser;
    final userDoc = _firestoreInstance.collection('users').doc(user?.uid);
    return userDoc.billCollection
        .where(
          'billType',
          isEqualTo: 'subscription',
        )
        .orderBy(
          'serverTimeStamp',
          descending: true,
        )
        .snapshots()
        .map(
          (querySnapshot) => right<FirestoreFailure, List<BillEntity>>(
            querySnapshot.docs
                .map((doc) => BillEntity.fromSnapshot(doc))
                .toList(),
          ),
        )
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirestoreFailure.insufficientPermissions());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    });
  }
}
