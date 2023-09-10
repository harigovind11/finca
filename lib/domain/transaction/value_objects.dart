import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/value_failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:finca/domain/core/value_validators.dart';

class TransactionAmount extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TransactionAmount(String input) {
    assert(input != null);
    return TransactionAmount._(validateInputNotEmpty(input));
  }
  const TransactionAmount._(this.value);
}

class TransactionPurpose extends ValueObject<dynamic> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TransactionPurpose(String input) {
    assert(input != null);
    return TransactionPurpose._(validateInputNotEmpty(input));
  }
  const TransactionPurpose._(this.value);
}
