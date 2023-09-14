import 'package:dartz/dartz.dart';
import 'package:finca/domain/account/account.dart';
import 'package:finca/domain/core/firestore_faillure.dart';

abstract class IAccountRepository {
  Stream<Either<FirestoreFailure, List<AccountEntity>>> watchAll();

  Future<Either<FirestoreFailure, Unit>> create(AccountEntity accountEntity);
  Future<Either<FirestoreFailure, Unit>> update(AccountEntity accountEntity);
  Future<Either<FirestoreFailure, Unit>> delete(AccountEntity accountEntity);
}
