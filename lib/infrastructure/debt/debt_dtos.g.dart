// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debt_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DebtDto _$$_DebtDtoFromJson(Map<String, dynamic> json) => _$_DebtDto(
      amount: json['amount'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      type: $enumDecode(_$DebtTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_DebtDtoToJson(_$_DebtDto instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'type': _$DebtTypeEnumMap[instance.type]!,
    };

const _$DebtTypeEnumMap = {
  DebtType.debt: 'debt',
  DebtType.credit: 'credit',
};
