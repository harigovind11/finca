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
      accountName: json['accountName'] as String,
    );

Map<String, dynamic> _$$_TransactionDtoToJson(_$_TransactionDto instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'purpose': instance.purpose,
      'date': instance.date.toIso8601String(),
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'accountName': instance.accountName,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.income: 'income',
  TransactionType.expense: 'expense',
};
