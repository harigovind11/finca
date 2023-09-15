import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/bill/bill_type.dart';
import 'package:finca/domain/bill/value_objects.dart';
import 'package:finca/domain/core/value_failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'bill.freezed.dart';

@freezed
class BillEntity with _$BillEntity {
  const BillEntity._();
  const factory BillEntity({
    required UniqueId id,
    required BillName billName,
    required BillAmount billAmount,
    required DateTime date,
    required BillType billType,
  }) = _BillEntity;

  factory BillEntity.empty() => BillEntity(
        id: UniqueId(''),
        billName: BillName(''),
        billAmount: BillAmount(''),
        date: DateTime.now(),
        billType: BillType.bill,
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return billName.failureOrUnit.andThen(billAmount.failureOrUnit).fold(
          (f) => some(f),
          (_) => none(),
        );
  }

//?Entity to domain
  factory BillEntity.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    final billTypeString = data['billType'] as String;
    final billType = billTypeFromString(billTypeString);

    return BillEntity(
      id: UniqueId.fromUniqueString(snapshot.id),
      billAmount: BillAmount(data['billAmount']),
      billName: BillName(data['billName']),
      date: DateTime.tryParse(data['date'])!,
      billType: billType,
    );
  }
}
