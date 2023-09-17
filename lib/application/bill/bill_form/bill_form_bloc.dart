import 'package:dartz/dartz.dart';
import 'package:finca/domain/bill/bill.dart';
import 'package:finca/domain/bill/bill_type.dart';
import 'package:finca/domain/bill/i_bill_repo.dart';
import 'package:finca/domain/bill/value_objects.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bill_form_event.dart';
part 'bill_form_state.dart';
part 'bill_form_bloc.freezed.dart';

@injectable
class BillFormBloc extends Bloc<BillFormEvent, BillFormState> {
  final IBillRepository _iBillRepository;
  BillFormBloc(this._iBillRepository) : super(BillFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(
        event.initialOption.fold(
          () => state,
          (initial) => state.copyWith(billEntity: initial, isEditing: true),
        ),
      );
    });
    on<_BillNameChanged>((event, emit) {
      emit(
        state.copyWith(
          billEntity: state.billEntity.copyWith(
            billName: BillName(event.billNameStr),
          ),
        ),
      );
    });
    on<_BillAmountChanged>((event, emit) {
      emit(
        state.copyWith(
          billEntity: state.billEntity.copyWith(
            billAmount: BillAmount(event.billAmountStr),
          ),
        ),
      );
    });
    on<_DateChanged>((event, emit) {
      emit(
        state.copyWith(
          billEntity: state.billEntity.copyWith(
            date: event.dateTime,
          ),
        ),
      );
    });
    on<_BillTypeChanged>((event, emit) {
      emit(
        state.copyWith(
          billEntity: state.billEntity.copyWith(
            billType: event.billType,
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
      if (state.billEntity.failureOption.isNone()) {
        failureOrSucess = state.isEditing
            ? await _iBillRepository.update(state.billEntity)
            : await _iBillRepository.create(state.billEntity);
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
