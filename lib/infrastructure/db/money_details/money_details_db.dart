import 'package:finca/core/constants.dart';
import 'package:finca/infrastructure/db/transaction/transaction_db.dart';
import 'package:finca/domain/models/category/category_model.dart';
import 'package:finca/domain/models/money_details/money_details_model.dart';
import 'package:finca/domain/models/transaction/transaction_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class MoneyDetailsDbFunctions {
  Future<void> getTotalBalance();
}

class MoneyDetailsDb implements MoneyDetailsDbFunctions {
  //singleton
  MoneyDetailsDb._internal();
  static MoneyDetailsDb instance = MoneyDetailsDb._internal();
  factory MoneyDetailsDb() {
    return instance;
  }

  @override
  Future<void> getTotalBalance() async {
    final _db = await Hive.box<MoneyDetailsModel>(MONEY_DETAILS_DB_NAME);
    final _list = await TransactionDb.instance.getAllTransaction();

    double totalBalance = 0.0;
    double totalIncome = 0.0;
    double totalExpense = 0.0;

    for (TransactionModel transactionModel in _list) {
      if (transactionModel.type == CategoryType.income) {
        totalBalance += transactionModel.amount;
        totalIncome += transactionModel.amount;
      } else if (transactionModel.type == CategoryType.expense) {
        totalBalance -= transactionModel.amount;
        totalExpense += transactionModel.amount;
      }
    }

    MoneyDetailsModel moneyDetailsModel = MoneyDetailsModel(
      totalBalance: totalBalance,
      totalIncome: totalIncome,
      totalExpense: totalExpense,
    );

    await _db.put(0, moneyDetailsModel);
  }
}
