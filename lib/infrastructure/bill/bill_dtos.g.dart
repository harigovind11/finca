// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BillDto _$$_BillDtoFromJson(Map<String, dynamic> json) => _$_BillDto(
      billAmount: json['billAmount'] as String,
      billName: json['billName'] as String,
      date: DateTime.parse(json['date'] as String),
      billType: $enumDecode(_$BillTypeEnumMap, json['billType']),
      serverTimeStamp: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_BillDtoToJson(_$_BillDto instance) =>
    <String, dynamic>{
      'billAmount': instance.billAmount,
      'billName': instance.billName,
      'date': instance.date.toIso8601String(),
      'billType': _$BillTypeEnumMap[instance.billType]!,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };

const _$BillTypeEnumMap = {
  BillType.bill: 'bill',
  BillType.subscription: 'subscription',
};
