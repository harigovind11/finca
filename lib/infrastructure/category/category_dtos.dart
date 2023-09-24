// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:finca/domain/category/category.dart';
import 'package:finca/infrastructure/core/json_converter.dart';

part 'category_dtos.freezed.dart';
part 'category_dtos.g.dart';

@freezed
abstract class CategoryDto with _$CategoryDto {
  const CategoryDto._();
  const factory CategoryDto({
    @JsonKey(includeFromJson: false) String? id,
    required String categoryName,
    required int categoryIcon,
    required int color,
    @ServerTimestampConverter() required FieldValue serverTimeStamp,
  }) = _CategoryDto;

//?Domain to Entity

  factory CategoryDto.fromDomain(CategoryEntity categoryEntity) {
    return CategoryDto(
      id: categoryEntity.id.getOrCrash(),
      categoryName: categoryEntity.categoryName.getOrCrash(),
      categoryIcon: categoryEntity.categoryIcon.codePoint,
      color: categoryEntity.color.value,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);
}
