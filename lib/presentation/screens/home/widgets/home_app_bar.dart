import 'package:finca/application/transaction/transaction_watcher/transaction_watcher_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:line_icons/line_icon.dart';

class HomeAppBar extends HookWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _textVisible = useState(false);
    return AppBar(
      backgroundColor: kBluegrey,
      elevation: 0,
      title: const TextWidget(
        text: 'Available Balance',
        color: kWhite,
        fontSize: 18,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const LineIcon.bell(color: kWhite, size: 27),
        ),
        kWidth20,
      ],
      bottom: AppBar(
        backgroundColor: kBluegrey,
        elevation: 0,
        title: Row(
          children: [
            BlocBuilder<TransactionWatcherBloc, TransactionWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  loadSucess: (state) {
                    return TextWidget(
                      text: _textVisible.value
                          ? '₹ ${state.totalBalance.toStringAsFixed(0)}'
                          : '₹ *****',
                      color: kWhite,
                      fontSize: 32,
                    );
                  },
                  orElse: () => const TextWidget(
                    text: 'N/A',
                    color: kWhite,
                    fontSize: 32,
                  ),
                );
              },
            ),
            kWidth5,
            IconButton(
              onPressed: () {
                _textVisible.value = !_textVisible.value;
              },
              icon: Icon(
                  _textVisible.value
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: kWhite,
                  size: 27),
            ),
          ],
        ),
      ),
    );
  }
}
