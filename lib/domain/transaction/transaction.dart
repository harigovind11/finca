import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:finca/domain/models/category/category_model.dart';
import 'package:finca/domain/transaction/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';

@freezed
class TransactionCard with _$TransactionCard {
  const TransactionCard._();
  const factory TransactionCard({
    required UniqueId id,
    required TransactionAmount amount,
    required TransactionPurpose purpose,
    required TransactionDate date,
    required TransactionType type,
  }) = _TransactionCard;

  factory TransactionCard.empty() => TransactionCard(
        id: UniqueId(''),
        amount: TransactionAmount(0),
        purpose: TransactionPurpose(''),
        date: TransactionDate(DateTime.now()),
        type: TransactionType(CategoryType.income),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return amount
        .getOrCrash()
        .andThen(purpose.failureOrUnit)
        .andThen(date.getOrCrash())
        .andThen(type.failureOrUnit);
  }
}
