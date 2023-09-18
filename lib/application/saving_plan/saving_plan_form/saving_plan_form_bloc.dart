import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/domain/saving_plan/i_saving_plan_repo.dart';
import 'package:finca/domain/saving_plan/saving_plan.dart';
import 'package:finca/domain/saving_plan/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saving_plan_form_event.dart';
part 'saving_plan_form_state.dart';
part 'saving_plan_form_bloc.freezed.dart';

@injectable
class SavingPlanFormBloc
    extends Bloc<SavingPlanFormEvent, SavingPlanFormState> {
  final ISavingPlanRepository _iSavingPlanRepository;
  SavingPlanFormBloc(this._iSavingPlanRepository)
      : super(SavingPlanFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(
        event.initialOption.fold(
          () => state,
          (initial) =>
              state.copyWith(savingPlanEntity: initial, isEditing: true),
        ),
      );
    });
    on<_GoalAmountChanged>((event, emit) {
      emit(
        state.copyWith(
          savingPlanEntity: state.savingPlanEntity.copyWith(
            goalAmount: SavingPlanGoalAmount(event.goalAmountStr),
          ),
        ),
      );
    });
    on<_PlanNameChanged>((event, emit) {
      emit(
        state.copyWith(
          savingPlanEntity: state.savingPlanEntity.copyWith(
            planName: SavingPlanName(event.planNameStr),
          ),
        ),
      );
    });

    on<_Saved>((event, emit) async {
      Either<FirestoreFailure, Unit>? failureOrSucess;
      emit(
        state.copyWith(
          isSaving: true,
          saveFailureOrSucessOption: none(),
        ),
      );

      if (state.savingPlanEntity.failureOption.isNone()) {
        failureOrSucess = state.isEditing
            ? await _iSavingPlanRepository.update(state.savingPlanEntity)
            : await _iSavingPlanRepository.create(state.savingPlanEntity);
      }
      emit(
        state.copyWith(
          isSaving: false,
          saveFailureOrSucessOption: optionOf(failureOrSucess),
        ),
      );
    });
  }
}
