import 'package:hive_flutter/hive_flutter.dart';
part 'saving_plans_model.g.dart';

@HiveType(typeId: 3)
class SavingPlansModel {
  @HiveField(0)
  final String planName;
  @HiveField(1)
  final double goalAmount;
  @HiveField(2)
  String? id;

  SavingPlansModel({
    required this.planName,
    required this.goalAmount,
  }) {
    id = DateTime.now().millisecondsSinceEpoch.toString();
  }
}
