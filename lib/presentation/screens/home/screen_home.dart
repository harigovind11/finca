import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:line_icons/line_icon.dart';

import 'widgets/arrow_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kplatsilver,
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              children: [
                Container(
                  height: size.height * 0.65,
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
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Column(
                      children: const [
                        HeadSection(),
                        InsideBox(),
                        MySavingPlansTitle(),
                      ],
                    ),
                  ),
                ),
                //! Recent Transactions
                kHeight60,
                Container(
                  height: size.height * 0.65,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(25),
                      topEnd: Radius.circular(25),
                    ),
                  ),
                )
              ],
            ),
          ),
          //! My saving plans widgets
          Positioned(
            top: 400,
            child: LimitedBox(
              maxHeight: 150,
              maxWidth: size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(5, (index) {
                  return MySavingPlansWidget(
                    index: index,
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeadSection extends StatelessWidget {
  const HeadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Available Balance',
              style: TextStyle(
                fontFamily: 'MusticaPro',
                color: kGreyShade,
                fontSize: 18,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: LineIcon.bell(color: kplatsilver, size: 27),
            ),
          ],
        ),
        Row(
          children: [
            const Text(
              '₹125556',
              style: TextStyle(
                fontFamily: 'MusticaPro',
                color: kplatsilver,
                fontSize: 32,
              ),
            ),
            kWidth5,
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.visibility_outlined,
                    color: kplatsilver, size: 27)),
          ],
        ),
        kHeight20,
      ],
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
        color: kBluegreyShade,
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
              Column(
                children: const [
                  Text(
                    'Money Spend',
                    style: TextStyle(
                      fontFamily: 'MusticaPro',
                      color: kGreyShade,
                      fontSize: 18,
                    ),
                  ),
                  kHeight5,
                  Text(
                    '₹57556',
                    style: TextStyle(
                      fontFamily: 'MusticaPro',
                      color: kplatsilver,
                      fontSize: 32,
                    ),
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
                      child: Row(
                        children: const [
                          Icon(
                            Icons.arrow_drop_down,
                            color: kWhite,
                          ),
                          Text(
                            '3.2 %',
                            style: TextStyle(
                              fontFamily: 'MusticaPro',
                              color: kWhite,
                            ),
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

class MySavingPlansTitle extends StatelessWidget {
  const MySavingPlansTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'My Saving Plans',
              style: TextStyle(
                fontFamily: 'MusticaPro',
                color: kGrey,
                fontSize: 25,
              ),
            ),
            GreenArrowButton(
              onPressed: () {},
            )
          ],
        ),
        kHeight20,
      ],
    );
  }
}

class MySavingPlansWidget extends StatelessWidget {
  final int index;
  var parser = EmojiParser();

  MySavingPlansWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final emoji = parser.emojify('🚗');
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: Card(
        color: kWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: 140,
          height: 140,
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                          color: kGrey.withOpacity(.4),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        emoji,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    ArrowButton(
                      onPressed: () {},
                    )
                  ],
                ),
                kHeight5,
                const Text(
                  'New Car',
                  style: TextStyle(
                    fontFamily: 'MusticaPro',
                    color: kBlack,
                    fontSize: 18,
                  ),
                ),
                kHeight5,
                const Text(
                  '₹57556',
                  style: TextStyle(
                    fontFamily: 'MusticaPro',
                    color: kplatsilver,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
