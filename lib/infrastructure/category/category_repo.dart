import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import 'package:finca/domain/category/category.dart';
import 'package:finca/domain/category/i_category.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/infrastructure/category/category_dtos.dart';
import 'package:finca/infrastructure/core/firebase_helpers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICategoryRepository)
class CategoryRepo implements ICategoryRepository {
  final FirebaseFirestore _firestore;

  CategoryRepo(this._firestore);
  @override
  Future<Either<FirestoreFailure, Unit>> create(
      CategoryEntity categoryEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final categoryDto = CategoryDto.fromDomain(categoryEntity);
      final json = categoryDto.toJson();
      await userDoc.categoryCollection.doc(categoryDto.id).set(json);
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
      CategoryEntity categoryEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final categoryDto = CategoryDto.fromDomain(categoryEntity);
      final json = categoryDto.toJson();
      await userDoc.categoryCollection.doc(categoryDto.id).update(json);
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
      CategoryEntity categoryEntity) async {
    try {
      final userDoc = await _firestore.userDocument();
      final categoryDto = CategoryDto.fromDomain(categoryEntity);

      await userDoc.categoryCollection.doc(categoryDto.id).delete();
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
  Stream<Either<FirestoreFailure, List<CategoryEntity>>> watchAll() {
    final _firestoreInstance = FirebaseFirestore.instance;
    final user = FirebaseAuth.instance.currentUser;
    final userDoc = _firestoreInstance.collection('users').doc(user?.uid);
    return userDoc.categoryCollection
        .orderBy(
          'serverTimeStamp',
          descending: true,
        )
        .snapshots()
        .map(
          (querySnapshot) => right<FirestoreFailure, List<CategoryEntity>>(
            querySnapshot.docs
                .map((doc) => CategoryEntity.fromSnapshot(doc))
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
