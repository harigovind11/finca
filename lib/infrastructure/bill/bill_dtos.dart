// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finca/domain/bill/bill.dart';
import 'package:finca/domain/bill/bill_type.dart';
import 'package:finca/infrastructure/core/json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'bill_dtos.freezed.dart';
part 'bill_dtos.g.dart';

@freezed
class BillDto with _$BillDto {
  const factory BillDto({
    @JsonKey(includeFromJson: false) String? id,
    required String billAmount,
    required String billName,
    required DateTime date,
    required BillType billType,
    @ServerTimestampConverter() required FieldValue serverTimeStamp,
  }) = _BillDto;

//?Domain To Entity

  factory BillDto.fromDomain(BillEntity billEntity) {
    return BillDto(
      id: billEntity.id.getOrCrash(),
      billAmount: billEntity.billAmount.getOrCrash(),
      billName: billEntity.billName.getOrCrash(),
      date: billEntity.date,
      billType: billEntity.billType,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }
  factory BillDto.fromJson(Map<String, dynamic> json) =>
      _$BillDtoFromJson(json);
}
