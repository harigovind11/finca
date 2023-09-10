enum TransactionType {
  income,

  expense,
}

TransactionType transactionTypeFromString(String value) {
  if (value.toLowerCase() == 'income') {
    return TransactionType.income;
  } else if (value.toLowerCase() == 'expense') {
    return TransactionType.expense;
  } else {
    // You can handle other cases or return a default value if needed.
    return TransactionType
        .income; // Default to income if the value is unrecognized.
  }
}
