// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:finca/core/constants.dart';
import 'package:finca/domain/db/money_details/money_details_db.dart';
import 'package:finca/domain/models/category/category_model.dart';
import 'package:finca/domain/models/money_details/money_details_model.dart';
import 'package:finca/domain/models/transaction/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

abstract class TransactionDbFunctions {
  Future<void> openBoxes();
  Future<void> addTransaction(TransactionModel object);
  Future<List<TransactionModel>> getAllTransaction();
  Future<void> deleteTransaction(String id);
  Future<void> refresh();
}

class TransactionDb implements TransactionDbFunctions {
  //singleton
  TransactionDb._internal(); //NamedConstructor
  static TransactionDb instance = TransactionDb._internal();
  factory TransactionDb() {
    return instance;
  }
  ValueNotifier<List<TransactionModel>> transactionListNotifier =
      ValueNotifier([]);

  ValueNotifier<List<TransactionModel>> incomeTransactionListNotifier =
      ValueNotifier([]);

  ValueNotifier<List<TransactionModel>> expenseTransactionListNotifier =
      ValueNotifier([]);

  @override
  Future<void> addTransaction(TransactionModel object) async {
    final _db = await Hive.box<TransactionModel>(TRANSACTION_DB_NAME);

    _db.put(object.id, object);

    MoneyDetailsDb.instance.getTotalBalance();
  }

  @override
  Future<void> deleteTransaction(String id) async {
    final _db = await Hive.box<TransactionModel>(TRANSACTION_DB_NAME);
    _db.delete(id);
    refresh();
    recentTransaction();
    MoneyDetailsDb.instance.getTotalBalance();
  }

  @override
  Future<List<TransactionModel>> getAllTransaction() async {
    final _db = await Hive.box<TransactionModel>(TRANSACTION_DB_NAME);

    return _db.values.toList();
  }

  @override
  Future<void> refresh() async {
    final _list = await getAllTransaction();
    _list.sort((first, second) => second.date.compareTo(first.date));
    incomeTransactionListNotifier.value.clear();
    expenseTransactionListNotifier.value.clear();
    await Future.forEach(_list, (TransactionModel transaction) {
      if (transaction.type == CategoryType.income) {
        incomeTransactionListNotifier.value.add(transaction);
      } else {
        expenseTransactionListNotifier.value.add(transaction);
      }
    });

    incomeTransactionListNotifier.notifyListeners();
    expenseTransactionListNotifier.notifyListeners();
  }

  Future<void> recentTransaction() async {
    final _list = await getAllTransaction();
    _list.sort((first, second) => second.date.compareTo(first.date));
    transactionListNotifier.value.clear();
    transactionListNotifier.value.addAll(_list);
    transactionListNotifier.notifyListeners();
  }

  @override
  Future<void> openBoxes() async {
    await Hive.openBox<TransactionModel>(TRANSACTION_DB_NAME);
    await Hive.openBox<MoneyDetailsModel>(MONEY_DETAILS_DB_NAME);
  }
}
