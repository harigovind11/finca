// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountDto _$$_AccountDtoFromJson(Map<String, dynamic> json) =>
    _$_AccountDto(
      accountName: json['accountName'] as String,
      accountBalance: json['accountBalance'] as String,
      serverTimeStamp: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_AccountDtoToJson(_$_AccountDto instance) =>
    <String, dynamic>{
      'accountName': instance.accountName,
      'accountBalance': instance.accountBalance,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
