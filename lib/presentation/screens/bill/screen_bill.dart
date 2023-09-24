import 'package:auto_route/auto_route.dart';
import 'package:finca/application/bill/bill_actor/bill_actor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/injectable.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/widgets/custom_fab.dart';

import 'widgets/bill_list.dart';
import 'widgets/subscription_list.dart';

@RoutePage()
class BillScreen extends StatelessWidget {
  const BillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<BillActorBloc>(),
        ),
      ],
      child: BlocListener<BillActorBloc, BillActorState>(
        listener: (context, state) {
          state.maybeMap(
              deleteFailure: (state) {
                showTopSnackBar(
                  Overlay.of(context),
                  CustomSnackBar.error(
                    backgroundColor: kGreyShade,
                    message: state.firestoreFailure.map(
                        unexpected: (_) =>
                            'Unexpected error occured while deleting, please contact support',
                        insufficientPermissions: (_) =>
                            'InsufficientPermissions',
                        unableToUpdate: (_) => 'Unable to update'),
                  ),
                );
              },
              orElse: () => null);
        },
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            floatingActionButton: CustomFAB(
              onPressed: () => AutoRouter.of(context).push(AddBillRoute()),
              icon: LineIcons.plusCircle,
              heroTag: 'btn6',
            ),
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(120),
              child: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: kBluegrey,
                title: const TextWidget(
                    text: 'Bills & Subscriptions', color: kWhite, fontSize: 28),
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
                        text: '  Bill  ',
                      ),
                      Tab(
                        text: '  Subscriptions  ',
                      ),
                    ]),
              ),
            ),
            body: const TabBarView(children: [
              BillListWidget(),
              SubscriptionListWidget(),
            ]),
          ),
        ),
      ),
    );
  }
}
