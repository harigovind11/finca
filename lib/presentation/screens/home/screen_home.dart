import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'widgets/arrow_button.dart';
import 'widgets/recent_transaction.dart';
import 'widgets/savingplans_scroll_widget.dart';
import 'widgets/subtitle_with_arrow_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          backgroundColor: kfincaPinkBg,
          elevation: 0,
          title: const TextWidget(
            text: 'Available Balance',
            color: kWhite,
            fontSize: 18,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: LineIcon.bell(color: kWhite, size: 27),
            ),
            kWidth20,
          ],
          bottom: AppBar(
            backgroundColor: kfincaPinkBg,
            elevation: 0,
            title: Row(
              children: [
                const TextWidget(
                  text: '₹125556',
                  color: kWhite,
                  fontSize: 32,
                ),
                kWidth5,
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.visibility_outlined,
                        color: kWhite, size: 27)),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: kplatsilver,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.47,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: kfincaPinkBg,
                      borderRadius: BorderRadiusDirectional.only(
                        bottomStart: Radius.circular(25),
                        bottomEnd: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        children: [
                          const InsideBox(),
                          SubtitleWithArrowButton(
                            title: 'My Savings Plans',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  kHeight60,
                  //! Recent Transactions
                  const RecentTransaction(),
                ],
              ),
            ),
            //! My saving plans
            Positioned(
              top: 275,
              child: LimitedBox(
                maxHeight: 150,
                maxWidth: size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(5, (index) {
                    return MySavingPlansScrollingWidget(
                      index: index,
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InsideBox extends StatelessWidget {
  const InsideBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //! Monthly spend
              const Column(
                children: [
                  TextWidget(
                    text: 'Money Spend',
                    color: kGreyShade,
                    fontSize: 18,
                  ),
                  kHeight5,
                  TextWidget(
                    text: '₹57556',
                    color: kBlack,
                    fontSize: 32,
                  ),
                ],
              ),
              //? Percentange widget and arrow button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 15, 0),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 35,
                      decoration: const BoxDecoration(
                        color: kGreen,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.arrow_drop_down,
                            color: kWhite,
                          ),
                          TextWidget(
                            text: '3.2 %',
                            color: kWhite,
                            fontSize: 12,
                          ),
                        ],
                      ),
                    ),
                    kWidth5,
                    ArrowButton(
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
          //? Graph
        ],
      ),
    );
  }
}
