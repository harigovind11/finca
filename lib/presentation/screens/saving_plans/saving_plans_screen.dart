import 'package:finca/infrastructure/hive/saving_plans_db.dart';
import 'package:finca/domain/models/saving_plans/saving_plans_model.dart';
import 'package:finca/presentation/screens/home/widgets/arrow_buttons.dart';
import 'package:finca/presentation/screens/saving_plans/widgets/savings_plan_popup.dart';
import 'package:finca/presentation/screens/saving_plans/widgets/savings_plan_scrolling_widget.dart';
import 'package:flutter/material.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:line_icons/line_icon.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SavingPlansScreen extends StatelessWidget {
  const SavingPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: kOffWhite,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(120),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(25),
                    bottomEnd: Radius.circular(25),
                  ),
                  color: kBluegrey,
                ),
                child: Column(
                  children: [
                    const TextWidget(
                      text: 'Saving Plans ',
                      color: kWhite,
                      fontSize: 15,
                    ),
                    kHeight30,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextWidget(
                          text: 'My Saving Plans ',
                          color: kWhite,
                          fontSize: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            print('add');
                            showSavingPlansAddPopup(context);
                          },
                          child: const Row(
                            children: [
                              LineIcon.plus(
                                color: kTeal,
                                size: 18,
                              ),
                              kWidth5,
                              TextWidget(
                                text: 'Add',
                                color: kTeal,
                                fontSize: 15,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: ValueListenableBuilder(
              valueListenable: SavingPlansDb.instance.savingPlansValueNotifier,
              builder: (BuildContext ctx, List<SavingPlansModel> newList,
                  Widget? _) {
                return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.1,
                  ),
                  itemBuilder: (
                    context,
                    index,
                  ) {
                    final _value = newList[index];
                    return SavingPlansScrollingWidget.savingPlanScreen(
                      planName: _value.planName,
                      goalAmount: _value.goalAmount,
                      deleteButton: () {
                        SavingPlansDb.instance.deleteTransaction(_value.id!);
                        SavingPlansDb.instance.refresh();
                      },
                    );
                  },
                  itemCount: newList.length,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}