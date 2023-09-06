import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:finca/domain/core/value_validators.dart';
import 'package:finca/domain/models/category/category_model.dart';

class TransactionAmount extends ValueObject<dynamic> {
  @override
  final Either<ValueFailure<dynamic>, dynamic> value;

  factory TransactionAmount(double input) {
    assert(input != null);
    return TransactionAmount._(validateInputNotEmpty(input));
  }
  const TransactionAmount._(this.value);
}

class TransactionPurpose extends ValueObject<dynamic> {
  @override
  final Either<ValueFailure<dynamic>, dynamic> value;

  factory TransactionPurpose(String input) {
    assert(input != null);
    return TransactionPurpose._(validateInputNotEmpty(input));
  }
  const TransactionPurpose._(this.value);
}

class TransactionDate extends ValueObject<dynamic> {
  @override
  final Either<ValueFailure<dynamic>, dynamic> value;

  factory TransactionDate(DateTime input) {
    assert(input != null);
    return TransactionDate._(validateInputNotEmpty(input));
  }
  const TransactionDate._(this.value);
}

class TransactionType extends ValueObject<dynamic> {
  @override
  final Either<ValueFailure<dynamic>, dynamic> value;

  factory TransactionType(CategoryType input) {
    assert(input != null);
    return TransactionType._(validateInputNotEmpty(input));
  }
  const TransactionType._(this.value);
}
