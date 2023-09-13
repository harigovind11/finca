import 'package:dartz/dartz.dart';
import 'package:finca/domain/transaction/i_transaction_repo.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/domain/transaction/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/domain/transaction/transaction_type.dart';
import 'package:injectable/injectable.dart';

part 'transaction_form_event.dart';
part 'transaction_form_state.dart';
part 'transaction_form_bloc.freezed.dart';

@injectable
class TransactionFormBloc
    extends Bloc<TransactionFormEvent, TransactionFormState> {
  final ITransactionRepository _iTransactionRepository;
  TransactionFormBloc(this._iTransactionRepository)
      : super(TransactionFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(
        event.initialNoteOption.fold(
          () => state,
          (initial) =>
              state.copyWith(transactionEntity: initial, isEditing: true),
        ),
      );
    });
    on<_AmountChanged>((event, emit) {
      emit(
        state.copyWith(
          transactionEntity: state.transactionEntity.copyWith(
            amount: TransactionAmount(event.amountStr),
          ),
        ),
      );
    });
    on<_PurposeChanged>((event, emit) {
      emit(
        state.copyWith(
          transactionEntity: state.transactionEntity.copyWith(
            purpose: TransactionPurpose(event.purposeStr),
          ),
        ),
      );
    });
    on<_DateChanged>((event, emit) {
      emit(
        state.copyWith(
          transactionEntity: state.transactionEntity.copyWith(
            date: event.dateTime,
          ),
        ),
      );
    });
    on<_TypeChanged>((event, emit) {
      emit(
        state.copyWith(
          transactionEntity: state.transactionEntity.copyWith(
            type: event.transactionType,
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

      if (state.transactionEntity.failureOption.isNone()) {
        failureOrSucess = state.isEditing
            ? await _iTransactionRepository.update(state.transactionEntity)
            : await _iTransactionRepository.create(state.transactionEntity);
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
