import 'package:hive_flutter/adapters.dart';
part 'category_model.g.dart';

@HiveType(typeId: 2)
enum CategoryType {
  @HiveField(0)
  income,
  @HiveField(1)
  expense,
}

CategoryType categoryTypeFromString(String value) {
  if (value.toLowerCase() == 'income') {
    return CategoryType.income;
  } else if (value.toLowerCase() == 'expense') {
    return CategoryType.expense;
  } else {
    // You can handle other cases or return a default value if needed.
    return CategoryType
        .income; // Default to income if the value is unrecognized.
  }
}
