import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/account/value_objects.dart';
import 'package:finca/domain/core/value_failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'account.freezed.dart';

@freezed
class AccountEntity with _$AccountEntity {
  const AccountEntity._();
  const factory AccountEntity({
    required UniqueId id,
    required AccountName accountName,
    required AccountBalance accountBalance,
  }) = _AccountEntity;

  factory AccountEntity.empty() => AccountEntity(
        id: UniqueId(''),
        accountName: AccountName(''),
        accountBalance: AccountBalance(''),
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return accountName.failureOrUnit.andThen(accountBalance.failureOrUnit).fold(
          (f) => some(f),
          (_) => none(),
        );
  }

  //?Entity to Domain

  factory AccountEntity.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return AccountEntity(
        id: UniqueId.fromUniqueString(snapshot.id),
        accountName: AccountName(data['accountName']),
        accountBalance: data['accountBalance']);
  }
}
