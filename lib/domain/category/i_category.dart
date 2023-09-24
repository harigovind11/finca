import 'package:dartz/dartz.dart';
import 'package:finca/domain/category/category.dart';
import 'package:finca/domain/core/firestore_faillure.dart';

abstract class ICategoryRepository {
  Stream<Either<FirestoreFailure, List<CategoryEntity>>> watchAll();
  Future<Either<FirestoreFailure, Unit>> create(CategoryEntity categoryEntity);
  Future<Either<FirestoreFailure, Unit>> update(CategoryEntity categoryEntity);
  Future<Either<FirestoreFailure, Unit>> delete(CategoryEntity categoryEntity);

  Future<Either<FirestoreFailure, Unit>> populateDefaultCategories();
}
