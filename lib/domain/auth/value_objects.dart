import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:finca/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  const EmailAddress._(
    this.value,
  );
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  @override
  String toString() => 'EmailAddress(value: $value)';

  @override
  bool operator ==(covariant EmailAddress other) {
    if (identical(this, other)) return true;

    return other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class Password extends ValueObject<String> {
  const Password._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input));
  }

  @override
  String toString() => 'Password(value: $value)';

  @override
  bool operator ==(covariant Password other) {
    if (identical(this, other)) return true;

    return other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
