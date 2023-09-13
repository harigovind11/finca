import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/value_failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:finca/domain/debt/value_objects.dart';
import 'package:finca/domain/debt/debt_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'debt.freezed.dart';

@freezed
class DebtEntity with _$DebtEntity {
  const DebtEntity._();
  const factory DebtEntity(
      {required UniqueId id,
      required DebtAmount amount,
      required DebtName name,
      required DebtDescription description,
      required DateTime startDate,
      required DateTime endDate,
      required DebtType type}) = _DebtEntity;

  factory DebtEntity.empty() => DebtEntity(
        id: UniqueId(''),
        amount: DebtAmount(''),
        name: DebtName(''),
        description: DebtDescription(''),
        startDate: DateTime.now(),
        endDate: DateTime.now(),
        type: DebtType.debt,
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return amount.failureOrUnit
        .andThen(name.failureOrUnit)
        .andThen(description.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }

  //? Entity to Domain

  factory DebtEntity.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    final debtTypeString = data['type'] as String;
    final debtType = debtTypeFromString(debtTypeString);

    return DebtEntity(
      id: UniqueId.fromUniqueString(snapshot.id),
      amount: DebtAmount(data['amount']),
      name: DebtName(data['name']),
      description: DebtDescription(data['description']),
      startDate: DateTime.tryParse(data['startDate'])!,
      endDate: DateTime.tryParse(data['endDate'])!,
      type: debtType,
    );
  }
}
