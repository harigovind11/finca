import 'package:finca/domain/models/category_model.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BalanceCalculationService {
  double calculateTotalBalance(List<TransactionEntity> transactions) {
    double totalIncome = 0.0;
    double totalExpense = 0.0;

    for (final transaction in transactions) {
      double parsedValue = double.parse(transaction.amount.getOrCrash());
      if (transaction.type == CategoryType.income) {
        totalIncome += parsedValue;
      } else {
        totalExpense += parsedValue;
      }
    }

    // Calculate the total balance (income - expense)
    final totalBalance = totalIncome - totalExpense;

    return totalBalance;
  }

  double calculateTotalncome(List<TransactionEntity> transactions) {
    double totalIncome = 0.0;

    for (final transaction in transactions) {
      double parsedValue = double.parse(transaction.amount.getOrCrash());
      if (transaction.type == CategoryType.income) {
        totalIncome += parsedValue;
      }
    }

    return totalIncome;
  }

  double calculateTotalExpense(List<TransactionEntity> transactions) {
    double totalExpense = 0.0;

    for (final transaction in transactions) {
      double parsedValue = double.parse(transaction.amount.getOrCrash());
      if (transaction.type == CategoryType.expense) {
        totalExpense += parsedValue;
      }
    }

    return totalExpense;
  }
}
