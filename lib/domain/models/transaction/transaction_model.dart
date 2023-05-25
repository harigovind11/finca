import 'package:finca/domain/models/category/category_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'transaction_model.g.dart';

@HiveType(typeId: 0)
class TransactionModel {
  @HiveField(0)
  final double amount;
  @HiveField(1)
  final String purpose;
  @HiveField(2)
  DateTime date;
  @HiveField(3)
  CategoryType type;
  @HiveField(4)
  String? id;

  TransactionModel({
    required this.amount,
    required this.purpose,
    required this.date,
    required this.type,
  }) {
    id = DateTime.now().millisecondsSinceEpoch.toString();
  }
}
