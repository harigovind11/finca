// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_string_interpolations
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icon.dart';

import 'package:finca/application/transaction/transaction_watcher/transaction_watcher_bloc.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/injectable.dart';
import 'package:finca/presentation/screens/home/widgets/recent_transaction.dart';

import 'widgets/graph_row_section_widget.dart';
import 'widgets/inside_box_widget.dart';

@RoutePage()
class AnalyticScreen extends StatelessWidget {
  const AnalyticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<TransactionWatcherBloc>()
            ..add(const TransactionWatcherEvent.watchAllStarted()),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kBluegrey,
          elevation: 0,
          title: const TextWidget(
            text: 'Analytics',
            color: kWhite,
            fontSize: 28,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const LineIcon.bell(color: kWhite, size: 28),
            ),
            kWidth20
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: size.height * 0.75,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: kBluegrey,
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(25),
                  bottomEnd: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                child: BlocBuilder<TransactionWatcherBloc,
                    TransactionWatcherState>(
                  builder: (context, state) {
                    return state.maybeMap(
                        loadSucess: (state) {
                          return Column(
                            children: [
                              InsideBoxWidget(
                                totalBalance:
                                    '₹ ${state.totalBalance.toStringAsFixed(0)}',
                              ),
                              kHeight20,
                              GraphRowSectionWidget(
                                totalIncome:
                                    '₹${state.totalIncome.toStringAsFixed(0)}',
                                totalExpense:
                                    '₹${state.totalExpense.toStringAsFixed(0)}',
                              ),
                            ],
                          );
                        },
                        orElse: () =>
                            const Center(child: CircularProgressIndicator()));
                  },
                ),
              ),
            ),
            const RecentTransaction(),
          ],
        ),
      ),
    );
  }
}
