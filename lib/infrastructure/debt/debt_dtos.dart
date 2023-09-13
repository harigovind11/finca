// ignore_for_file: invalid_annotation_target

import 'package:finca/domain/debt/debt.dart';
import 'package:finca/domain/debt/debt_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'debt_dtos.g.dart';
part 'debt_dtos.freezed.dart';

@freezed
class DebtDto with _$DebtDto {
  const DebtDto._();
  const factory DebtDto({
    @JsonKey(includeFromJson: false) String? id,
    required String amount,
    required String name,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required DebtType type,
  }) = _DebtDto;

  //? Domain to Entity

  factory DebtDto.fromDomain(DebtEntity debtEntity) {
    return DebtDto(
        id: debtEntity.id.getOrCrash(),
        amount: debtEntity.amount.getOrCrash(),
        name: debtEntity.name.getOrCrash(),
        description: debtEntity.description.getOrCrash(),
        startDate: debtEntity.startDate,
        endDate: debtEntity.endDate,
        type: debtEntity.type);
  }

  factory DebtDto.fromJson(Map<String, dynamic> json) =>
      _$DebtDtoFromJson(json);
}
