import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/domain/debt/debt.dart';
import 'package:finca/domain/debt/i_debt_repo.dart';
import 'package:finca/infrastructure/core/firebase_helpers.dart';
import 'package:finca/infrastructure/debt/debt_dtos.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IDebtRepository)
class DebtRepository implements IDebtRepository {
  final FirebaseFirestore _firestore;

  DebtRepository(this._firestore);
  @override
  Future<Either<FirestoreFailure, Unit>> create(DebtEntity debtEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final debtDto = DebtDto.fromDomain(debtEntity);
      final json = debtDto.toJson();
      await userDoc.debtCollection.doc(debtDto.id).set(json);
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
  Future<Either<FirestoreFailure, Unit>> update(DebtEntity debtEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final debtDto = DebtDto.fromDomain(debtEntity);
      final json = debtDto.toJson();
      await userDoc.debtCollection.doc(debtDto.id).update(json);
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
  Future<Either<FirestoreFailure, Unit>> delete(DebtEntity debtEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final debtDto = DebtDto.fromDomain(debtEntity);

      await userDoc.debtCollection.doc(debtDto.id).delete();
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
  Stream<Either<FirestoreFailure, List<DebtEntity>>> watchAll() {
    final _firestoreInstance = FirebaseFirestore.instance;
    final user = FirebaseAuth.instance.currentUser;
    final userDoc = _firestoreInstance.collection('users').doc(user?.uid);

    return userDoc.debtCollection
        .orderBy('startDate', descending: true)
        .snapshots()
        .map((querySnapshot) {
      return right<FirestoreFailure, List<DebtEntity>>(
        querySnapshot.docs.map((doc) => DebtEntity.fromSnapshot(doc)).toList(),
      );
    }).onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirestoreFailure.insufficientPermissions());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<FirestoreFailure, List<DebtEntity>>> watchDebt() {
    final _firestoreInstance = FirebaseFirestore.instance;
    final user = FirebaseAuth.instance.currentUser;
    final userDoc = _firestoreInstance.collection('users').doc(user?.uid);
    return userDoc.debtCollection
        .where('type', isEqualTo: 'debt')
        .orderBy('startDate', descending: true)
        .snapshots()
        .map((querySnapshot) {
      return right<FirestoreFailure, List<DebtEntity>>(
        querySnapshot.docs.map((doc) => DebtEntity.fromSnapshot(doc)).toList(),
      );
    }).onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirestoreFailure.insufficientPermissions());
      } else {
        return left(const FirestoreFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<FirestoreFailure, List<DebtEntity>>> watchCredit() {
    final _firestoreInstance = FirebaseFirestore.instance;
    final user = FirebaseAuth.instance.currentUser;
    final userDoc = _firestoreInstance.collection('users').doc(user?.uid);
    return userDoc.debtCollection
        .where('type', isEqualTo: 'credit')
        .orderBy('startDate', descending: true)
        .snapshots()
        .map((querySnapshot) {
      return right<FirestoreFailure, List<DebtEntity>>(
        querySnapshot.docs.map((doc) => DebtEntity.fromSnapshot(doc)).toList(),
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
