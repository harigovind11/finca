// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionDto _$$_TransactionDtoFromJson(Map<String, dynamic> json) =>
    _$_TransactionDto(
      amount: json['amount'] as String,
      purpose: json['purpose'] as String,
      date: DateTime.parse(json['date'] as String),
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      accountId: json['accountId'] as String,
      categoryId: json['categoryId'] as String,
    );

Map<String, dynamic> _$$_TransactionDtoToJson(_$_TransactionDto instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'purpose': instance.purpose,
      'date': instance.date.toIso8601String(),
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'accountId': instance.accountId,
      'categoryId': instance.categoryId,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.income: 'income',
  TransactionType.expense: 'expense',
};
