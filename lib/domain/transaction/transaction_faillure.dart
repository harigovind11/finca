import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_faillure.freezed.dart';

@freezed
class TransactionFailure with _$TransactionFailure {
  const factory TransactionFailure.unexpected() = _Unexpected;
  const factory TransactionFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory TransactionFailure.unableToUpdate() = _UnableToUpdate;
}
