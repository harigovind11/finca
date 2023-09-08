import 'package:finca/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

//!Auth
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const emailRegex = r'(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)';
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else if (input.length < 6) {
    return left(ValueFailure.shortPassword(failedValue: input));
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}

//!Add Transactions
Either<ValueFailure<dynamic>, dynamic> validateInputNotEmpty(dynamic input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}
