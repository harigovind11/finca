import 'package:finca/application/saving_plan/saving_plan_watcher/saving_plan_watcher_bloc.dart';
import 'package:finca/application/transaction/transaction_watcher/transaction_watcher_bloc.dart';
import 'package:finca/injectable.dart';
import 'package:finca/presentation/screens/debt/widgets/critical_failure_display_widget.dart';
import 'package:finca/presentation/screens/widgets/custom_fab.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:auto_route/auto_route.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/home/widgets/recent_transaction.dart';
import 'widgets/features_row.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/inside_box_widget.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<TransactionWatcherBloc>()
            ..add(const TransactionWatcherEvent.watchAllStarted()),
        ),
        BlocProvider(
          create: (context) => getIt<SavingPlanWatcherBloc>()
            ..add(const SavingPlanWatcherEvent.watchAllStarted()),
        ),
      ],
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
          child: Column(
            children: [
              Container(
                // height: size.height * .52,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: const BoxDecoration(
                  color: kBluegrey,
                  borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(20),
                    bottomEnd: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    BlocBuilder<TransactionWatcherBloc,
                        TransactionWatcherState>(
                      builder: (context, state) {
                        return state.maybeMap(
                            loadInProgress: (_) => const FlipCard(
                                  front: InsideBoxLoading(isIncome: true),
                                  back: InsideBoxLoading(isIncome: false),
                                ),
                            loadSucess: (state) {
                              return FlipCard(
                                front: InsideBoxWidget(
                                  isIncome: true,
                                  amount:
                                      '₹ ${state.totalIncome.toStringAsFixed(0)}',
                                ),
                                back: InsideBoxWidget(
                                  isIncome: false,
                                  amount:
                                      '₹ ${state.totalExpense.toStringAsFixed(0)}',
                                ),
                              );
                            },
                            loadFailure: (state) => CriticalFailureDisplay(
                                  failure: state.firestoreFailure,
                                ),
                            orElse: () => const Card());
                      },
                    ),
                    const FeaturesRow(),
                    kHeight20,
                  ],
                ),
              ),
              kHeight60,
              const RecentTransaction(),
            ],
          ),
        ),
      ),
    );
  }
}
