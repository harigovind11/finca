import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import 'package:finca/domain/category/category.dart';
import 'package:finca/domain/category/i_category.dart';
import 'package:finca/domain/category/value_objects.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:finca/infrastructure/category/category_dtos.dart';
import 'package:finca/infrastructure/core/firebase_helpers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICategoryRepository)
class CategoryRepo implements ICategoryRepository {
  final FirebaseFirestore _firestore;

  CategoryRepo(this._firestore);

  @override
  Future<void> initializeCategories() async {
    final userDoc = await _firestore.userDocument();
    final categoryStatusDocRef = userDoc.categoryCollection.doc('status');
    final categoryStatusDoc = await categoryStatusDocRef.get();
    if (!categoryStatusDoc.exists) {
      // The status document doesn't exist, so populate the default categories.
      await addDefaultCategories();
      // Set the "Default Categories added" field to true in the status document.
      await categoryStatusDocRef.set({'Default Categories added': true});
    }
  }

  Future<Either<FirestoreFailure, Unit>> addDefaultCategories() async {
    try {
      final defaultCategories = [
        CategoryEntity(
            id: UniqueId('1'),
            categoryName: CategoryName('Salary'),
            categoryIcon: Icons.account_balance_wallet,
            color: Colors.red),
        CategoryEntity(
            id: UniqueId('2'),
            categoryName: CategoryName('Food'),
            categoryIcon: Icons.restaurant_menu_outlined,
            color: Colors.deepPurple),
        CategoryEntity(
            id: UniqueId('3'),
            categoryName: CategoryName('Grocery'),
            categoryIcon: Icons.shopping_cart_outlined,
            color: Colors.indigo),
        CategoryEntity(
            id: UniqueId('4'),
            categoryName: CategoryName('Shopping'),
            categoryIcon: Icons.shopping_bag_outlined,
            color: Colors.pink),
        CategoryEntity(
            id: UniqueId('5'),
            categoryName: CategoryName('Transportaion'),
            categoryIcon: Icons.directions_bus_filled_outlined,
            color: Colors.purple),
        CategoryEntity(
            id: UniqueId('6'),
            categoryName: CategoryName('Fuel'),
            categoryIcon: Icons.local_gas_station_outlined,
            color: Colors.yellow),
        CategoryEntity(
            id: UniqueId('7'),
            categoryName: CategoryName('Cloth'),
            categoryIcon: Icons.checkroom,
            color: Colors.orange),
        CategoryEntity(
            id: UniqueId('8'),
            categoryName: CategoryName('Wifi'),
            categoryIcon: Icons.wifi,
            color: Colors.black),
        CategoryEntity(
            id: UniqueId('9'),
            categoryName: CategoryName('Water'),
            categoryIcon: Icons.water_drop_outlined,
            color: Colors.teal),
        CategoryEntity(
            id: UniqueId('10'),
            categoryName: CategoryName('Hospital'),
            categoryIcon: Icons.healing,
            color: Colors.red),
        CategoryEntity(
            id: UniqueId('11'),
            categoryName: CategoryName('Medicine'),
            categoryIcon: Icons.vaccines,
            color: Colors.greenAccent),
        CategoryEntity(
          id: UniqueId('12'),
          categoryName: CategoryName('Television'),
          categoryIcon: Icons.tv,
          color: const Color.fromARGB(255, 0, 60, 150),
        ),
      ];

      for (final categoryData in defaultCategories) {
        final userDoc = await _firestore.userDocument();
        final categoryDto = CategoryDto.fromDomain(categoryData);
        final json = categoryDto.toJson();
        await userDoc.categoryCollection.add(json);
      }

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
