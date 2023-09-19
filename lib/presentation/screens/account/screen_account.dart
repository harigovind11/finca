import 'package:auto_route/auto_route.dart';
import 'package:finca/application/account/account_actor/account_actor_bloc.dart';
import 'package:finca/application/account/account_watcher/account_watcher_bloc.dart';
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

import 'widgets/account_list.dart';

@RoutePage()
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AccountActorBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<AccountWatcherBloc>()
            ..add(const AccountWatcherEvent.watchAllStarted()),
        ),
      ],
      child: BlocListener<AccountActorBloc, AccountActorState>(
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
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SafeArea(
            child: Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endFloat,
              floatingActionButton: CustomFAB(
                onPressed: () => AutoRouter.of(context).push(AddAccountRoute()),
                icon: LineIcons.plusCircle,
                heroTag: 'btn5',
              ),
              backgroundColor: kWhite,
              appBar: AppBar(
                backgroundColor: kBluegrey,
                title: const TextWidget(
                  text: 'My Accounts ',
                  color: kWhite,
                  fontSize: 25,
                ),
              ),
              body: const AccountListWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
