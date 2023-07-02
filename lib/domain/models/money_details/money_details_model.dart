// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_flutter/hive_flutter.dart';

part 'money_details_model.g.dart';

@HiveType(typeId: 1)
class MoneyDetailsModel {
  @HiveField(0)
  double totalBalance;

  @HiveField(1)
  double totalIncome;

  @HiveField(2)
  double totalExpense;

  MoneyDetailsModel({
    required this.totalBalance,
    required this.totalIncome,
    required this.totalExpense,
  });
}
