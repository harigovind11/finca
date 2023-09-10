import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_faillure.freezed.dart';

@freezed
class FirestoreFailure with _$FirestoreFailure {
  const factory FirestoreFailure.unexpected() = _Unexpected;
  const factory FirestoreFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory FirestoreFailure.unableToUpdate() = _UnableToUpdate;
}
