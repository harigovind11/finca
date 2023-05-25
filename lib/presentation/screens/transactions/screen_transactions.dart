import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/domain/db/transaction/transaction_db.dart';
import 'package:flutter/material.dart';

import 'widgets/expense_category_list.dart';
import 'widgets/income_category_list.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  void initState() {
    TransactionDb.instance.refresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: AppBar(
            backgroundColor: kfincaPinkBg,
            title: const TextWidget(
                text: 'Transactions', color: kWhite, fontSize: 28),
            bottom: TabBar(
                labelColor: kBluegrey,
                unselectedLabelColor: kWhite,
                labelStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MusticaPro'),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 5,
                ),
                isScrollable: false,
                indicator:
                    BoxDecoration(color: kWhite, borderRadius: kRadius30),
                tabs: const [
                  Tab(
                    text: '  Income  ',
                  ),
                  Tab(
                    text: '  Expense  ',
                  ),
                ]),
          ),
        ),
        body: TabBarView(children: [
          _buildIncome(),
          _buildExpense(),
        ]),
      ),
    );
  }

  Widget _buildIncome() {
    return const IncomeCategoryListWidget();
  }

  Widget _buildExpense() {
    return const ExpenseCategoryListWidget();
  }
}
