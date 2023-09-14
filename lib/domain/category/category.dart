import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/category/value_objects.dart';
import 'package:finca/domain/core/value_failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'category.freezed.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  const CategoryEntity._();
  const factory CategoryEntity({
    required UniqueId id,
    required CategoryName name,
    required CategoryIcon icon,
    required CategoryIconColor iconColor,
  }) = _CategoryEntity;

  factory CategoryEntity.empty() => CategoryEntity(
        id: UniqueId(''),
        name: CategoryName(CategoryName.predefinedNames[0]),
        icon: CategoryIcon(CategoryIcon.predefinedIcons[0]),
        iconColor: CategoryIconColor(
          CategoryIconColor.predefinedColors[0],
        ),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.andThen(icon.failureOrUnit).fold(
          (f) => some(f),
          (_) => none(),
        );
  }

  factory CategoryEntity.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return CategoryEntity(
      id: UniqueId.fromUniqueString(snapshot.id),
      name: CategoryName(
        data['name'],
      ),
      icon: CategoryIcon(data['icon']),
      iconColor: data['iconColor'],
    );
  }
}
