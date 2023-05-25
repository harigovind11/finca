import 'package:hive_flutter/adapters.dart';
part 'category_model.g.dart';

@HiveType(typeId: 1)
enum CategoryType {
  @HiveField(0)
  income,
  @HiveField(1)
  expense,
}
