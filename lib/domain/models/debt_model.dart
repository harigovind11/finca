enum DebtType {
  debt,

  credit,
}

DebtType debtTypeFromString(String value) {
  if (value.toLowerCase() == 'debt') {
    return DebtType.debt;
  } else if (value.toLowerCase() == 'credit') {
    return DebtType.credit;
  } else {
    return DebtType.debt;
  }
}
