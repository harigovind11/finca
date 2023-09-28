// ignore_for_file: invalid_annotation_target

import 'package:finca/domain/transaction/transaction_type.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_dtos.g.dart';
part 'transaction_dtos.freezed.dart';

@freezed
abstract class TransactionDto implements _$TransactionDto {
  const TransactionDto._();
  const factory TransactionDto({
    @JsonKey(includeFromJson: false) String? id,
    required String amount,
    required String purpose,
    required DateTime date,
    required TransactionType type,
    required String accountId,
    required String categoryId,
  }) = _TransactionDto;

  //?Domain to entity

  factory TransactionDto.fromDomain(TransactionEntity transactionEntity) {
    return TransactionDto(
        id: transactionEntity.id.getOrCrash(),
        amount: transactionEntity.amount.getOrCrash(),
        purpose: transactionEntity.purpose.getOrCrash(),
        date: transactionEntity.date,
        type: transactionEntity.type,
        accountId: transactionEntity.accountId.getOrCrash(),
        categoryId: transactionEntity.categoryId.getOrCrash());
  }

  factory TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionDtoFromJson(json);
}
