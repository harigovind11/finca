import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/value_failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:finca/domain/core/value_validators.dart';

class DebtAmount extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory DebtAmount(String input) {
    assert(input != null);
    return DebtAmount._(validateInputNotEmpty(input));
  }
  const DebtAmount._(this.value);
}

class DebtName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory DebtName(String input) {
    assert(input != null);
    return DebtName._(validateInputNotEmpty(input));
  }
  const DebtName._(this.value);
}

class DebtDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory DebtDescription(String input) {
    assert(input != null);
    return DebtDescription._(validateInputNotEmpty(input));
  }
  const DebtDescription._(this.value);
}
