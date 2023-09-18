import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:finca/core/colors_collection.dart';
import 'package:finca/application/bill/bill_form/bill_form_bloc.dart';
import 'package:finca/presentation/screens/widgets/date_and_time_parser.dart';

class BillDatePickerWidget extends StatelessWidget {
  const BillDatePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BillFormBloc, BillFormState>(
      builder: (context, state) {
        return ListTile(
          onTap: () async {
            final DateTime? dateTime = await datePicker(
              context,
            );
            if (dateTime != null) {
              context
                  .read<BillFormBloc>()
                  .add(BillFormEvent.dateChanged(dateTime));
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
            parseDateYMMMD(context.read<BillFormBloc>().state.billEntity.date),
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
    final billFormStateDate =
        context.read<BillFormBloc>().state.billEntity.date;
    return showDatePicker(
      context: context,
      initialDate: billFormStateDate,
      firstDate: DateTime(2013),
      lastDate: DateTime.now(),
      currentDate: billFormStateDate,
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
