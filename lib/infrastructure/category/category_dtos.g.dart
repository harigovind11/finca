// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryDto _$$_CategoryDtoFromJson(Map<String, dynamic> json) =>
    _$_CategoryDto(
      categoryName: json['categoryName'] as String,
      categoryIcon: json['categoryIcon'] as int,
      color: json['color'] as int,
      serverTimeStamb: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamb'] as Object),
    );

Map<String, dynamic> _$$_CategoryDtoToJson(_$_CategoryDto instance) =>
    <String, dynamic>{
      'categoryName': instance.categoryName,
      'categoryIcon': instance.categoryIcon,
      'color': instance.color,
      'serverTimeStamb':
          const ServerTimestampConverter().toJson(instance.serverTimeStamb),
    };
