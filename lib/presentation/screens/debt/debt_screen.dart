import 'package:finca/presentation/router/app_router.dart';
import 'package:finca/presentation/screens/widgets/custom_fab.dart';
import 'package:flutter/material.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:line_icons/line_icons.dart';

@RoutePage()
class DebtScreen extends StatelessWidget {
  const DebtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: CustomFAB(
          onPressed: () => AutoRouter.of(context).push(AddTransactionRoute()),
          icon: LineIcons.plusCircle,
          heroTag: 'btn3',
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: AppBar(
            backgroundColor: kBluegrey,
            title: const TextWidget(text: 'Debts', color: kWhite, fontSize: 28),
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
                    text: '  Debt  ',
                  ),
                  Tab(
                    text: '  Credit  ',
                  ),
                ]),
          ),
        ),
        body: const TabBarView(children: []),
      ),
    );
  }
}
