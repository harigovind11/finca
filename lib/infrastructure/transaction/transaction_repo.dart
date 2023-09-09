import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/transaction/i_transaction_repo.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/domain/transaction/transaction_faillure.dart';
import 'package:finca/infrastructure/core/firebase_helpers.dart';
import 'package:finca/infrastructure/transaction/transaction_dtos.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: ITransactionRepository)
class TransactionRepo implements ITransactionRepository {
  final FirebaseFirestore _firestore;

  TransactionRepo(this._firestore);

  @override
  Future<Either<TransactionFailure, Unit>> create(
      TransactionEntity transactionEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final transactionDto = TransactionDto.fromDomain(transactionEntity);
      final json = transactionDto.toJson();
      await userDoc.transactionCollection.doc(transactionDto.id).set(json);
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TransactionFailure.insufficientPermissions());
      } else {
        return left(const TransactionFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TransactionFailure, Unit>> update(
      TransactionEntity transaction) async {
    try {
      final userDoc = await _firestore.userDocument();
      final transactionDto = TransactionDto.fromDomain(transaction);
      final json = transactionDto.toJson();
      await userDoc.transactionCollection.doc(transactionDto.id).update(json);
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TransactionFailure.insufficientPermissions());
      } else {
        return left(const TransactionFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TransactionFailure, Unit>> delete(
      TransactionEntity transaction) async {
    try {
      final userDoc = await _firestore.userDocument();
      final transactionId = transaction.id.getOrCrash();
      await userDoc.transactionCollection.doc(transactionId).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TransactionFailure.insufficientPermissions());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const TransactionFailure.unableToUpdate());
      } else {
        return left(const TransactionFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<TransactionFailure, List<TransactionEntity>>> watchAll() {
    final _firestoreInstance = FirebaseFirestore.instance;
    final user = FirebaseAuth.instance.currentUser;
    final userDoc = _firestoreInstance.collection('users').doc(user?.uid);

    return userDoc.transactionCollection
        .orderBy(
          'date',
          descending: true,
        )
        .snapshots()
        .map((querySnapshot) {
      return right<TransactionFailure, List<TransactionEntity>>(
        querySnapshot.docs
            .map((doc) => TransactionEntity.fromSnapshot(doc))
            .toList(),
      );
    }).onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const TransactionFailure.insufficientPermissions());
      } else {
        return left(const TransactionFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<TransactionFailure, List<TransactionEntity>>>
      watchIncomeTransaction() {
    final _firestoreInstance = FirebaseFirestore.instance;
    final user = FirebaseAuth.instance.currentUser;
    final userDoc = _firestoreInstance.collection('users').doc(user?.uid);

    return userDoc.transactionCollection
        .where('type', isEqualTo: 'income')
        .orderBy(
          'date',
          descending: true,
        )
        .snapshots()
        .map((querySnapshot) {
      return right<TransactionFailure, List<TransactionEntity>>(
        querySnapshot.docs
            .map((doc) => TransactionEntity.fromSnapshot(doc))
            .toList(),
      );
    }).onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const TransactionFailure.insufficientPermissions());
      } else {
        return left(const TransactionFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<TransactionFailure, List<TransactionEntity>>>
      watchExpenseTransaction() {
    final _firestoreInstance = FirebaseFirestore.instance;
    final user = FirebaseAuth.instance.currentUser;
    final userDoc = _firestoreInstance.collection('users').doc(user?.uid);

    return userDoc.transactionCollection
        .where('type', isEqualTo: 'expense')
        .orderBy(
          'date',
          descending: true,
        )
        .snapshots()
        .map((querySnapshot) {
      return right<TransactionFailure, List<TransactionEntity>>(
        querySnapshot.docs
            .map((doc) => TransactionEntity.fromSnapshot(doc))
            .toList(),
      );
    }).onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const TransactionFailure.insufficientPermissions());
      } else {
        return left(const TransactionFailure.unexpected());
      }
    });
  }
}
