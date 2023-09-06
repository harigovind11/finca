// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:finca/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;
  UnexpectedValueError(
    this.valueFailure,
  );

  @override
  String toString() => 'UnexpectedValueError(valueFailure: $valueFailure)';
}

class NotAuthenticatedError extends Error {}
