import 'package:finca/application/transaction/transaction_watcher/transaction_watcher_bloc.dart';
import 'package:finca/injectable.dart';
import 'package:finca/presentation/screens/widgets/custom_fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:auto_route/auto_route.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/home/widgets/recent_transaction.dart';

import 'widgets/home_app_bar.dart';
import 'widgets/inside_box_widget.dart';
import 'widgets/saving_plans_widget.dart';
import 'widgets/subtitle_with_arrow_button.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => getIt<TransactionWatcherBloc>()
        ..add(const TransactionWatcherEvent.watchAllStarted()),
      child: Scaffold(
        floatingActionButton: CustomFAB(
          onPressed: () => AutoRouter.of(context).push(AddTransactionRoute()),
          icon: LineIcons.plusCircle,
          heroTag: 'btn1',
        ),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: HomeAppBar(),
        ),
        backgroundColor: kplatsilver,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: size.height * .52,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: const BoxDecoration(
                      color: kBluegrey,
                      borderRadius: BorderRadiusDirectional.only(
                        bottomStart: Radius.circular(25),
                        bottomEnd: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                        BlocBuilder<TransactionWatcherBloc,
                            TransactionWatcherState>(
                          builder: (context, state) {
                            return state.maybeMap(
                                loadSucess: (state) {
                                  return InsideBoxWidget(
                                    expense:
                                        '₹ ${state.totalExpense.toStringAsFixed(0)}',
                                  );
                                },
                                orElse: () => const InsideBoxWidget(
                                      expense: 'N/A',
                                    ));
                          },
                        ),
                        SubtitleWithArrowButton(
                          title: 'My Savings Plans',
                          titleColor: kWhite,
                          onPressed: () {
                            AutoRouter.of(context)
                                .push(const SavingPlanRoute());
                          },
                        ),
                      ],
                    ),
                  ),
                  kHeight60,
                  const RecentTransaction(),
                ],
              ),
              //! My saving plans
              // SavingPlansWidget(size: size),
            ],
          ),
        ),
      ),
    );
  }
}


 // TODO : BLoc
