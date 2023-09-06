import 'package:finca/core/colors_picker.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/infrastructure/hive/saving_plans_db.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class SavingPlansScrollingWidget extends StatefulWidget {
  final String planName;
  final double goalAmount;
  final EdgeInsetsGeometry outsidePadding;
  final EdgeInsetsGeometry insidePadding;
  final double borderRadius;
  final double containerWidth;
  final VoidCallback? deleteButton;
  final VoidCallback? onLongPress;
  bool isSavingPlanScreen = false;

  SavingPlansScrollingWidget.homeScreen({
    super.key,
    required this.planName,
    required this.goalAmount,
    this.outsidePadding = const EdgeInsets.only(left: 10),
    this.insidePadding = const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 15,
    ),
    this.borderRadius = 10,
    this.containerWidth = 165,
    this.deleteButton,
    this.onLongPress,
    this.isSavingPlanScreen = false,
  });

  SavingPlansScrollingWidget.savingPlanScreen({
    super.key,
    required this.planName,
    required this.goalAmount,
    this.outsidePadding = const EdgeInsets.only(top: 10),
    this.insidePadding = const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 20,
    ),
    this.borderRadius = 20,
    this.containerWidth = 190,
    required this.deleteButton,
    this.isSavingPlanScreen = true,
    this.onLongPress,
  });
  SavingPlansScrollingWidgetState savingPlansScrollingWidgetState =
      SavingPlansScrollingWidgetState();
  @override
  State<SavingPlansScrollingWidget> createState() =>
      SavingPlansScrollingWidgetState();
}

class SavingPlansScrollingWidgetState extends State<SavingPlansScrollingWidget>
    with TickerProviderStateMixin {
  bool _isDeleting = false;
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  Widget build(BuildContext context) {
    var parser = EmojiParser();
    final emoji = parser.emojify('🚗');

    return GestureDetector(
      // onLongPress: widget.onLongPress,
      onLongPress: () {
        widget.isSavingPlanScreen == true ? startAnimation() : null;
      },
      child: Padding(
        padding: widget.outsidePadding,
        child: Card(
          color: kWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Stack(
            children: [
              Opacity(
                opacity: 1 - _animation!.value,
                child: Container(
                  width: widget.containerWidth,
                  height: 190,
                  child: Padding(
                    padding: widget.insidePadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                            // ArrowButton(
                            //   onPressed: () {},
                            // )
                          ],
                        ),
                        kHeight20,
                        TextWidget(
                          text: widget.planName,
                          color: kBlack,
                          fontSize: 18,
                        ),
                        kHeight15,
                        TextWidget(
                          text: '₹ ${widget.goalAmount.toStringAsFixed(0)}',
                          color: kBluegreyShade,
                          fontSize: 22,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Opacity(
                  opacity: _animation!.value,
                  child: Center(
                    child: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: widget.deleteButton),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  void startAnimation() {
    _isDeleting = !_isDeleting;

    if (_isDeleting) {
      _controller!.forward();
    } else {
      _controller!.reverse();
    }
  }
}
