// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finca/domain/account/account.dart';
import 'package:finca/infrastructure/core/json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'account_dtos.freezed.dart';
part 'account_dtos.g.dart';

@freezed
abstract class AccountDto with _$AccountDto {
  const AccountDto._();
  const factory AccountDto({
    @JsonKey(includeFromJson: false) String? id,
    required String accountName,
    required String accountBalance,
    @ServerTimestampConverter() required FieldValue serverTimeStamp,
  }) = _AccountDto;

  //?Domain to Entity

  factory AccountDto.fromDomain(AccountEntity accountEntity) {
    return AccountDto(
      id: accountEntity.id.getOrCrash(),
      accountName: accountEntity.accountName.getOrCrash(),
      accountBalance: accountEntity.accountBalance.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }
  factory AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);
}
