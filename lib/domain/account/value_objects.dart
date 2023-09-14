import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/value_failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:finca/domain/core/value_validators.dart';

class AccountName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory AccountName(String input) {
    assert(input != null);
    return AccountName._(validateInputNotEmpty(input));
  }
  const AccountName._(this.value);
}

class AccountBalance extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory AccountBalance(String input) {
    assert(input != null);
    return AccountBalance._(validateInputNotEmpty(input));
  }
  const AccountBalance._(this.value);
}
