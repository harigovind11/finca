// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saving_plan_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavingPlanDto _$$_SavingPlanDtoFromJson(Map<String, dynamic> json) =>
    _$_SavingPlanDto(
      planName: json['planName'] as String,
      goalAmount: json['goalAmount'] as String,
      serverTimeStamp: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_SavingPlanDtoToJson(_$_SavingPlanDto instance) =>
    <String, dynamic>{
      'planName': instance.planName,
      'goalAmount': instance.goalAmount,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
