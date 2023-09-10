import 'package:finca/domain/debt/debt.dart';
import 'package:finca/domain/models/debt_model.dart';
import 'package:finca/domain/models/transaction_model.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BalanceCalculationService {
  double calculateTotalBalance(List<TransactionEntity> transactions) {
    double totalIncome = 0.0;
    double totalExpense = 0.0;

    for (final transaction in transactions) {
      double parsedValue = double.parse(transaction.amount.getOrCrash());
      if (transaction.type == TransactionType.income) {
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
      if (transaction.type == TransactionType.income) {
        totalIncome += parsedValue;
      }
    }

    return totalIncome;
  }

  double calculateTotalExpense(List<TransactionEntity> transactions) {
    double totalExpense = 0.0;

    for (final transaction in transactions) {
      double parsedValue = double.parse(transaction.amount.getOrCrash());
      if (transaction.type == TransactionType.expense) {
        totalExpense += parsedValue;
      }
    }

    return totalExpense;
  }

  double calculateTotalDebt(List<DebtEntity> debts) {
    double totalDebt = 0.0;

    for (final debt in debts) {
      double parsedValue = double.parse(debt.amount.getOrCrash());
      if (debt.type == DebtType.debt) {
        totalDebt += parsedValue;
      }
    }

    return totalDebt;
  }

  double calculateTotalCredit(List<DebtEntity> credits) {
    double totalCredit = 0.0;

    for (final debt in credits) {
      double parsedValue = double.parse(debt.amount.getOrCrash());
      if (debt.type == DebtType.credit) {
        totalCredit += parsedValue;
      }
    }

    return totalCredit;
  }
}
