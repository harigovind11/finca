import 'package:finca/application/saving_plan/saving_plan_actor/saving_plan_actor_bloc.dart';
import 'package:finca/application/saving_plan/saving_plan_watcher/saving_plan_watcher_bloc.dart';
import 'package:finca/injectable.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/widgets/custom_fab.dart';
import 'package:finca/presentation/screens/widgets/warning_popup.dart';
import 'package:flutter/material.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:line_icons/line_icons.dart';

import 'widgets/saving_plan_list.dart';

@RoutePage()
class SavingPlanScreen extends StatelessWidget {
  const SavingPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<SavingPlanActorBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SavingPlanWatcherBloc>()
            ..add(const SavingPlanWatcherEvent.watchAllStarted()),
        ),
      ],
      child: BlocListener<SavingPlanActorBloc, SavingPlanActorState>(
        listener: (context, state) {
          state.maybeMap(
              deleteFailure: (state) {
                popUpWarning(
                  context,
                  state.firestoreFailure.map(
                      unexpected: (_) =>
                          'Unexpected error occured while deleting, please contact support',
                      insufficientPermissions: (_) => 'InsufficientPermissions',
                      unableToUpdate: (_) => 'Unable to update'),
                );
              },
              orElse: () => null);
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SafeArea(
            child: Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endFloat,
              floatingActionButton: CustomFAB(
                onPressed: () =>
                    AutoRouter.of(context).push(AddSavingPlanRoute()),
                icon: LineIcons.plusCircle,
                heroTag: 'btn3',
              ),
              backgroundColor: kBluegrey,
              appBar: AppBar(
                backgroundColor: kBluegrey,
                title: const TextWidget(
                  text: 'My Saving Plans ',
                  color: kWhite,
                  fontSize: 25,
                ),
              ),
              body: const SavingPlanListWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
