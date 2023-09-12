import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/domain/debt/debt.dart';
import 'package:finca/domain/debt/i_debt_repo.dart';
import 'package:finca/domain/debt/value_objects.dart';
import 'package:finca/domain/models/debt_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'debt_form_event.dart';
part 'debt_form_state.dart';
part 'debt_form_bloc.freezed.dart';

@injectable
class DebtFormBloc extends Bloc<DebtFormEvent, DebtFormState> {
  final IDebtRepository _iDebtRepository;
  DebtFormBloc(this._iDebtRepository) : super(DebtFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(
        event.initialNoteOption.fold(
          () => state,
          (initial) => state.copyWith(debtEntity: initial, isEditing: true),
        ),
      );
    });
    on<_AmountChanged>((event, emit) {
      emit(state.copyWith(
        debtEntity: state.debtEntity.copyWith(
          amount: DebtAmount(event.amountStr),
        ),
      ));
    });
    on<_NameChanged>((event, emit) {
      emit(
        state.copyWith(
          debtEntity: state.debtEntity.copyWith(
            name: DebtName(event.nameStr),
          ),
        ),
      );
    });

    on<_DescriptionChanged>((event, emit) {
      emit(
        state.copyWith(
          debtEntity: state.debtEntity.copyWith(
            description: DebtDescription(event.descriptionStr),
          ),
        ),
      );
    });

    on<_StartDateChanged>((event, emit) {
      emit(
        state.copyWith(
          debtEntity: state.debtEntity.copyWith(
            startDate: event.startDate,
          ),
        ),
      );
    });

    on<_EndDateChanged>((event, emit) {
      emit(
        state.copyWith(
          debtEntity: state.debtEntity.copyWith(
            endDate: event.endDate,
          ),
        ),
      );
    });
    on<_TypeChanged>((event, emit) {
      emit(
        state.copyWith(
          debtEntity: state.debtEntity.copyWith(
            type: event.debtType,
          ),
        ),
      );
    });
    on<_Saved>((event, emit) async {
      Either<FirestoreFailure, Unit>? failureOrSucess;

      emit(state.copyWith(
        isSaving: true,
        saveFailureOrSucessOption: none(),
      ));
      if (state.debtEntity.failureOption.isNone()) {
        failureOrSucess = state.isEditing
            ? await _iDebtRepository.update(state.debtEntity)
            : await _iDebtRepository.create(state.debtEntity);
      }
      emit(state.copyWith(
        isSaving: false,
        saveFailureOrSucessOption: optionOf(failureOrSucess),
      ));
    });
  }
}
