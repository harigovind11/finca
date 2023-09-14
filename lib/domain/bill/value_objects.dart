import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/value_failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:finca/domain/core/value_validators.dart';

class BillName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory BillName(String input) {
    assert(input != null);
    return BillName._(validateInputNotEmpty(input));
  }
  const BillName._(this.value);
}

class BillAmount extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory BillAmount(String input) {
    assert(input != null);
    return BillAmount._(validateInputNotEmpty(input));
  }
  const BillAmount._(this.value);
}
