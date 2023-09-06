// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionDto _$$_TransactionDtoFromJson(Map<String, dynamic> json) =>
    _$_TransactionDto(
      amount: (json['amount'] as num).toDouble(),
      purpose: json['purpose'] as String,
      date: DateTime.parse(json['date'] as String),
      type: $enumDecode(_$CategoryTypeEnumMap, json['type']),
      serverTimeStamp: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_TransactionDtoToJson(_$_TransactionDto instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'purpose': instance.purpose,
      'date': instance.date.toIso8601String(),
      'type': _$CategoryTypeEnumMap[instance.type]!,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };

const _$CategoryTypeEnumMap = {
  CategoryType.income: 'income',
  CategoryType.expense: 'expense',
};
