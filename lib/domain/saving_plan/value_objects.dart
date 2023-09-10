import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/value_failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:finca/domain/core/value_validators.dart';

class SavingPlanName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SavingPlanName(String input) {
    assert(input != null);
    return SavingPlanName._(validateInputNotEmpty(input));
  }
  const SavingPlanName._(this.value);
}

class SavingPlanGoalAmount extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SavingPlanGoalAmount(String input) {
    assert(input != null);
    return SavingPlanGoalAmount._(validateInputNotEmpty(input));
  }
  const SavingPlanGoalAmount._(this.value);
}
