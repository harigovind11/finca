import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/account/account.dart';
import 'package:finca/domain/account/i_account_repo.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/infrastructure/account/account_dtos.dart';
import 'package:finca/infrastructure/core/firebase_helpers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAccountRepository)
class AccountRepo implements IAccountRepository {
  final FirebaseFirestore _firestore;

  AccountRepo(this._firestore);
  @override
  Future<Either<FirestoreFailure, Unit>> create(
      AccountEntity accountEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final accountDto = AccountDto.fromDomain(accountEntity);
      final json = accountDto.toJson();
      await userDoc.accountCollection.doc(accountDto.id).set(json);
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
      AccountEntity accountEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final accountDto = AccountDto.fromDomain(accountEntity);
      final json = accountDto.toJson();
      await userDoc.accountCollection.doc(accountDto.id).update(json);
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
      AccountEntity accountEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final accountDto = AccountDto.fromDomain(accountEntity);

      await userDoc.accountCollection.doc(accountDto.id).delete();
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
  Stream<Either<FirestoreFailure, List<AccountEntity>>> watchAll() {
    final _firestoreInstance = FirebaseFirestore.instance;
    final user = FirebaseAuth.instance.currentUser;
    final userDoc = _firestoreInstance.collection('users').doc(user?.uid);
    return userDoc.accountCollection
        .orderBy(
          'serverTimeStamp',
          descending: true,
        )
        .snapshots()
        .map(
          (querySnapshot) => right<FirestoreFailure, List<AccountEntity>>(
            querySnapshot.docs
                .map((doc) => AccountEntity.fromSnapshot(doc))
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
  Stream<Either<FirestoreFailure, AccountEntity>> watchByAccountId(
      String accountId) {
    final _firestoreInstance = FirebaseFirestore.instance;
    final user = FirebaseAuth.instance.currentUser;
    final userDoc = _firestoreInstance.collection('users').doc(user?.uid);
    return userDoc.accountCollection
        .where('accountId', isEqualTo: accountId)
        .snapshots()
        .map((querySnapshot) {
      final doc = querySnapshot.docs.first;
      return right<FirestoreFailure, AccountEntity>(
        AccountEntity.fromSnapshot(doc),
      );
    }).onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left<FirestoreFailure, AccountEntity>(
          const FirestoreFailure.insufficientPermissions(),
        );
      } else if (e is FirebaseException && e.message!.contains('NOT_FOUND')) {
        return left(const FirestoreFailure.unableToUpdate());
      } else {
        return left<FirestoreFailure, AccountEntity>(
          const FirestoreFailure.unexpected(),
        );
      }
    });
  }
}
