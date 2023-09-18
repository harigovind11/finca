// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:finca/application/debt/debt_form/debt_form_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/date_and_time_parser.dart';

class DebtDatePicker extends StatelessWidget {
  const DebtDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: StartDatePickerWidget(),
        ),
        Expanded(child: EndDatePickerWidget()),
      ],
    );
  }
}

class StartDatePickerWidget extends StatelessWidget {
  const StartDatePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DebtFormBloc, DebtFormState>(
      builder: (context, state) {
        return ListTile(
          onTap: () async {
            final DateTime? dateTime = await datePicker(
              context,
            );
            if (dateTime != null) {
              context
                  .read<DebtFormBloc>()
                  .add(DebtFormEvent.startDateChanged(dateTime));
            } else {
              return;
            }
          },
          title: const TextWidget(
            text: 'Start date',
            color: kWhite,
            fontSize: 15,
          ),
          subtitle: Text(
            parseDateYMMMD(
                context.read<DebtFormBloc>().state.debtEntity.startDate),
            style: const TextStyle(color: kWhite, fontSize: 12),
          ),
        );
      },
    );
  }

  Future<DateTime?> datePicker(
    BuildContext context,
  ) {
    final debtFormStateDate =
        context.read<DebtFormBloc>().state.debtEntity.startDate;
    return showDatePicker(
      context: context,
      initialDate: debtFormStateDate,
      firstDate: DateTime(2013),
      lastDate: DateTime.now(),
      currentDate: debtFormStateDate,
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

class EndDatePickerWidget extends StatelessWidget {
  const EndDatePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DebtFormBloc, DebtFormState>(
      builder: (context, state) {
        return ListTile(
          onTap: () async {
            final DateTime? dateTime = await datePicker(
              context,
            );
            if (dateTime != null) {
              context
                  .read<DebtFormBloc>()
                  .add(DebtFormEvent.endDateChanged(dateTime));
            } else {
              return;
            }
          },
          title: const TextWidget(
            text: 'End date',
            color: kWhite,
            fontSize: 15,
          ),
          subtitle: Text(
            parseDateYMMMD(
                context.read<DebtFormBloc>().state.debtEntity.endDate),
            style: const TextStyle(color: kWhite, fontSize: 12),
          ),
        );
      },
    );
  }

  Future<DateTime?> datePicker(
    BuildContext context,
  ) {
    final debtFormStateDate =
        context.read<DebtFormBloc>().state.debtEntity.endDate;
    return showDatePicker(
      context: context,
      initialDate: debtFormStateDate,
      firstDate: DateTime(2013),
      lastDate: DateTime.now(),
      currentDate: debtFormStateDate,
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
