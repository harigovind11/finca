enum BillType {
  bill,
  subscription,
}

BillType billTypeFromString(String value) {
  if (value.toLowerCase() == 'bill') {
    return BillType.bill;
  } else if (value.toLowerCase() == 'subscription') {
    return BillType.subscription;
  } else {
    return BillType.bill;
  }
}
