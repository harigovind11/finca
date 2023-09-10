import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:finca/domain/models/category_model.dart';
import 'package:finca/domain/transaction/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';

@freezed
class TransactionEntity with _$TransactionEntity {
  const TransactionEntity._();
  const factory TransactionEntity({
    required UniqueId id,
    required TransactionAmount amount,
    required TransactionPurpose purpose,
    required DateTime date,
    required CategoryType type,
  }) = _TransactionEntity;

  factory TransactionEntity.empty() => TransactionEntity(
        id: UniqueId(''),
        amount: TransactionAmount(''),
        purpose: TransactionPurpose(''),
        date: DateTime.now(),
        type: CategoryType.income,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return amount.failureOrUnit
        .andThen(purpose.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }

//? Entity to Domain
  factory TransactionEntity.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    final categoryTypeString = data['type'] as String;
    final categoryType = categoryTypeFromString(categoryTypeString);

    return TransactionEntity(
      id: UniqueId.fromUniqueString(snapshot.id),
      amount: TransactionAmount(data['amount']),
      purpose: TransactionPurpose(data['purpose']),
      date: DateTime.tryParse(data['date'])!,
      type: categoryType,
    );
  }
}
