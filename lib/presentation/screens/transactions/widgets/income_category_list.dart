import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class IncomeCategoryListWidget extends StatelessWidget {
  const IncomeCategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            color: kViolet.withOpacity(.7),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
                width: double.infinity,
                height: 80,
                padding: const EdgeInsets.all(10.0),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5)),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: kWhite,
                        radius: 20,
                        child: Icon(
                          LineIcons.arrowDown,
                          color: kViolet,
                        ),
                      ),
                      kWidth15,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: 'Receive',
                            color: kOffWhite,
                            fontSize: 15,
                          ),
                          TextWidget(
                            text: 'Spotify Subscription',
                            color: kBlack,
                            fontSize: 18,
                          ),
                          TextWidget(
                            text: 'Date',
                            color: kOffWhite,
                            fontSize: 15,
                          ),
                        ],
                      ),
                      kWidth15,
                      TextWidget(
                        text: '₹196.0',
                        color: kBlack,
                        fontSize: 18,
                      ),
                    ])),
          );
        },
        separatorBuilder: (context, index) {
          return kHeight10;
        },
        itemCount: 10,
      ),
    );
  }
}
