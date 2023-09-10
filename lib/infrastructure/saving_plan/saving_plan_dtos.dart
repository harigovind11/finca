// ignore_for_file: invalid_annotation_target

import 'package:finca/domain/saving_plan/saving_plan.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saving_plan_dtos.g.dart';
part 'saving_plan_dtos.freezed.dart';

@freezed
class SavingPlanDto with _$SavingPlanDto {
  const SavingPlanDto._();
  const factory SavingPlanDto({
    @JsonKey(includeFromJson: false) String? id,
    required String planName,
    required String goalAmount,
    required DateTime date,
  }) = _SavingPlanDto;

//?Domain to Entity
  factory SavingPlanDto.fromDomain(SavingPlanEntity savingPlanEntity) {
    return SavingPlanDto(
      id: savingPlanEntity.id.getOrCrash(),
      planName: savingPlanEntity.planName.getOrCrash(),
      goalAmount: savingPlanEntity.goalAmount.getOrCrash(),
      date: savingPlanEntity.date,
    );
  }

  factory SavingPlanDto.fromJson(Map<String, dynamic> json) =>
      _$SavingPlanDtoFromJson(json);
}
