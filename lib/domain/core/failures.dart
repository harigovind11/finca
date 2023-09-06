import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  //!Auth
  const factory ValueFailure.invalidEmail({required String failedValue}) =
      InvalidEmail<T>;
  const factory ValueFailure.invalidPassword({required String failedValue}) =
      InvalidPassword<T>;
  const factory ValueFailure.shortPassword({required String failedValue}) =
      ShortPassword<T>;
  const factory ValueFailure.passwordDoesntMatch({
    required String failedValue1,
    required String failedValue2,
  }) = PasswordDoesntMatch<T>;
  //!Add Transactions
  const factory ValueFailure.empty({
    required dynamic failedValue,
  }) = Empty<T>;
}
