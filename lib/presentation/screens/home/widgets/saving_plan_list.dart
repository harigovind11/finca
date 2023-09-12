import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finca/application/saving_plan/saving_plan_watcher/saving_plan_watcher_bloc.dart';
import 'package:finca/presentation/screens/saving_plan/widgets/error_card.dart';
import 'package:finca/presentation/screens/transaction/widgets/critical_failure_display_widget.dart';
import 'saving_plan_card.dart';

class SavingPlanList extends StatelessWidget {
  const SavingPlanList({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 275,
      child: BlocBuilder<SavingPlanWatcherBloc, SavingPlanWatcherState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const Card(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadSucess: (state) => LimitedBox(
              maxHeight: 180,
              maxWidth: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final savingPlanEntity = state.savingPlans[index];
                  if (savingPlanEntity.failureOption.isSome()) {
                    return SavingPlanErrorCard(
                        savingPlanEntity: savingPlanEntity);
                  } else {
                    return SavingPlanCard(
                      savingPlanEntity: savingPlanEntity,
                    );
                  }
                },
                itemCount: state.savingPlans.length,
              ),
            ),
            loadFailure: (state) => CriticalFailureDisplay(
              failure: state.firestoreFailure,
            ),
          );
        },
      ),
    );
  }
}

//? Todo empty card 
//Ui
// Card(
//               color: kBluegreyShade,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: const Stack(
//                 children: [
//                   SizedBox(
//                     width: 190,
//                     height: 190,
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 5,
//                       ),
//                       child: TextWidget(
//                         text: 'AAAAA',
//                         color: kWhite,
//                         fontSize: 25,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),