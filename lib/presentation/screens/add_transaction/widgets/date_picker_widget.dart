// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:finca/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/date_and_time_parser.dart';

class TransactionDatePickerWidget extends StatelessWidget {
  const TransactionDatePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: (context, state) {
        return ListTile(
          onTap: () async {
            final DateTime? dateTime = await datePicker(
              context,
            );
            if (dateTime != null) {
              context
                  .read<TransactionFormBloc>()
                  .add(TransactionFormEvent.dateChanged(dateTime));
            } else {
              return;
            }
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 80),
          leading: Icon(
            Icons.today_rounded,
            color: kWhite.withOpacity(.5),
          ),
          title: Text(
            parseDateYMMMD(context
                .read<TransactionFormBloc>()
                .state
                .transactionEntity
                .date),
            style: const TextStyle(
              color: kWhite,
            ),
          ),
        );
      },
    );
  }

  Future<DateTime?> datePicker(
    BuildContext context,
  ) {
    final transactionFormStateDate =
        context.read<TransactionFormBloc>().state.transactionEntity.date;
    return showDatePicker(
      context: context,
      initialDate: transactionFormStateDate,
      firstDate: DateTime(2013),
      lastDate: DateTime.now(),
      currentDate: transactionFormStateDate,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.dark(
              primary: kBlueShade,
              onSurface: kWhite,
            ),
            datePickerTheme: DatePickerThemeData(
              yearStyle: const TextStyle(
                color: kWhite,
              ),
              backgroundColor: kBluegrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              headerBackgroundColor: kBluegrey,
              headerHelpStyle: const TextStyle(color: kWhite),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
  }
}
