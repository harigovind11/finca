enum CategoryType {
  income,

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
