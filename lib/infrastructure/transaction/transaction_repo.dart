import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/transaction/i_transaction_repo.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/domain/transaction/transaction_faillure.dart';
import 'package:finca/infrastructure/core/firebase_helpers.dart';
import 'package:finca/infrastructure/transaction/transaction_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:kt_dart/kt.dart';

class TransactionRepo implements ITransactionRepository {
  final FirebaseFirestore _firestore;

  TransactionRepo(this._firestore);
  @override
  Stream<Either<TransactionFailure, KtList<TransactionCard>>>
      watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy(
          'serverTimeStamp',
          descending: true,
        )
        .snapshots()
        .map(
          (snapshot) => right<TransactionFailure, KtList<TransactionCard>>(
            snapshot.docs
                .map((doc) => TransactionDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const TransactionFailure.insufficientPermissions());
      } else {
        return left(const TransactionFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<TransactionFailure, Unit>> create(
      TransactionCard transaction) async {
    try {
      final userDoc = await _firestore.userDocument();
      final transactionDto = TransactionDto.fromDomain(transaction);
      await userDoc.noteCollection
          .doc(transactionDto.id)
          .set(transactionDto.toJson());
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
      TransactionCard transaction) async {
    try {
      final userDoc = await _firestore.userDocument();
      final transactionDto = TransactionDto.fromDomain(transaction);
      await userDoc.noteCollection
          .doc(transactionDto.id)
          .update(transactionDto.toJson());
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
      TransactionCard transaction) async {
    try {
      final userDoc = await _firestore.userDocument();
      final transactionId = transaction.id.getOrCrash();
      await userDoc.noteCollection.doc(transactionId).delete();
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
}
