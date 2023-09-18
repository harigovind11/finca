import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/value_failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:finca/domain/saving_plan/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'saving_plan.freezed.dart';

@freezed
class SavingPlanEntity with _$SavingPlanEntity {
  const SavingPlanEntity._();
  const factory SavingPlanEntity({
    required UniqueId id,
    required SavingPlanName planName,
    required SavingPlanGoalAmount goalAmount,
  }) = _SavingPlanEntity;

  factory SavingPlanEntity.empty() => SavingPlanEntity(
        id: UniqueId(''),
        planName: SavingPlanName(''),
        goalAmount: SavingPlanGoalAmount(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return planName.failureOrUnit
        .andThen(goalAmount.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }

  //?Entity to Domain

  factory SavingPlanEntity.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return SavingPlanEntity(
      id: UniqueId.fromUniqueString(snapshot.id),
      planName: SavingPlanName(data['planName']),
      goalAmount: SavingPlanGoalAmount(data['goalAmount']),
    );
  }
}
