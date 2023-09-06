import 'package:dartz/dartz.dart';
import 'package:finca/domain/transaction/transaction_faillure.dart';
import 'package:finca/domain/transaction/value_objects.dart';
import 'package:finca/infrastructure/transaction/transaction_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/domain/models/category/category_model.dart';

part 'transaction_form_event.dart';
part 'transaction_form_state.dart';
part 'transaction_form_bloc.freezed.dart';

class TransactionFormBloc
    extends Bloc<TransactionFormEvent, TransactionFormState> {
  final TransactionRepo _transactionRepo;
  TransactionFormBloc(this._transactionRepo)
      : super(TransactionFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(
        event.initialNoteOption.fold(
          () => state,
          (initial) => state.copyWith(transaction: initial, isEditing: true),
        ),
      );
    });
    on<_AmountChanged>((event, emit) {
      emit(
        state.copyWith(
          transaction: state.transaction.copyWith(
            amount: TransactionAmount(event.amountValue),
          ),
        ),
      );
    });
    on<_PurposeChanged>((event, emit) {
      emit(
        state.copyWith(
          transaction: state.transaction.copyWith(
            purpose: TransactionPurpose(event.purposeStr),
          ),
        ),
      );
    });
    on<_DateChanged>((event, emit) {
      emit(
        state.copyWith(
          transaction: state.transaction.copyWith(
            date: TransactionDate(event.dateTime),
          ),
        ),
      );
    });
    on<_TypeChanged>((event, emit) {
      emit(
        state.copyWith(
          transaction: state.transaction.copyWith(
            type: TransactionType(event.categoryType),
          ),
        ),
      );
    });
    on<_Saved>((event, emit) async {
      Either<TransactionFailure, Unit>? failureOrSucess;
      emit(
        state.copyWith(
          isSaving: true,
          saveFailureOrSucessOption: none(),
        ),
      );
      if (state.transaction.failureOption.isNone()) {
        failureOrSucess = state.isEditing
            ? await _transactionRepo.update(state.transaction)
            : await _transactionRepo.create(state.transaction);
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
