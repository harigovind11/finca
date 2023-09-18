import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/category/value_objects.dart';
import 'package:finca/domain/core/value_failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'category.freezed.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  const CategoryEntity._();
  const factory CategoryEntity({
    required UniqueId id,
    required CategoryName categoryName,
    required IconData categoryIcon,
    required Color color,
  }) = _CategoryEntity;

  factory CategoryEntity.empty() => CategoryEntity(
        id: UniqueId(''),
        categoryName: CategoryName(''),
        categoryIcon: Icons.category,
        color: Colors.blue,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return categoryName.failureOrUnit.fold(
      (f) => some(f),
      (_) => none(),
    );
  }

  factory CategoryEntity.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return CategoryEntity(
      id: UniqueId.fromUniqueString(snapshot.id),
      categoryName: CategoryName(
        data['categoryName'],
      ),
      categoryIcon: IconData(data['categoryIcon']),
      color: Color(data['color']),
    );
  }
}
