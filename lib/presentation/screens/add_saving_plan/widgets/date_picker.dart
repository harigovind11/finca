import 'package:finca/application/saving_plan/saving_plan_form/saving_plan_form_bloc.dart';
import 'package:finca/core/colors_picker.dart';
import 'package:finca/presentation/screens/widgets/date_and_time_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SavingPlanDatePickerWidget extends StatelessWidget {
  const SavingPlanDatePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavingPlanFormBloc, SavingPlanFormState>(
      builder: (context, state) {
        return ListTile(
          onTap: () async {
            final DateTime? dateTime = await datePicker(
              context,
            );
            if (dateTime != null) {
              context
                  .read<SavingPlanFormBloc>()
                  .add(SavingPlanFormEvent.dateChanged(dateTime));
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
            parseDateYMMMD(
                context.read<SavingPlanFormBloc>().state.savingPlanEntity.date),
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
    final savingPlanFormStateDate =
        context.read<SavingPlanFormBloc>().state.savingPlanEntity.date;
    return showDatePicker(
      context: context,
      initialDate: savingPlanFormStateDate,
      firstDate: DateTime(2013),
      lastDate: DateTime.now(),
      currentDate: savingPlanFormStateDate,
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
