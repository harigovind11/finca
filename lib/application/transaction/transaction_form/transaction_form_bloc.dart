import 'package:dartz/dartz.dart';
import 'package:finca/domain/account/account.dart';
import 'package:finca/domain/account/i_account_repo.dart';
import 'package:finca/domain/account/value_objects.dart';
import 'package:finca/domain/core/value_objects.dart';
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
  final IAccountRepository _iAccountRepository;
  String selectedAccountId = '';
  String selectedCategoryId = '';
  TransactionFormBloc(
    this._iTransactionRepository,
    this._iAccountRepository,
  ) : super(TransactionFormState.initial()) {
    on<Initialized>((event, emit) {
      emit(
        event.initialOption.fold(
          () => state,
          (initial) =>
              state.copyWith(transactionEntity: initial, isEditing: true),
        ),
      );
    });
    on<AmountChanged>((event, emit) {
      emit(
        state.copyWith(
          transactionEntity: state.transactionEntity.copyWith(
            amount: TransactionAmount(event.amountStr),
          ),
        ),
      );
    });
    on<PurposeChanged>((event, emit) {
      emit(
        state.copyWith(
          transactionEntity: state.transactionEntity.copyWith(
            purpose: TransactionPurpose(event.purposeStr),
          ),
        ),
      );
    });
    on<DateChanged>((event, emit) {
      emit(
        state.copyWith(
          transactionEntity: state.transactionEntity.copyWith(
            date: event.dateTime,
          ),
        ),
      );
    });
    on<TypeChanged>((event, emit) {
      emit(
        state.copyWith(
          transactionEntity: state.transactionEntity.copyWith(
            type: event.transactionType,
          ),
        ),
      );
    });
    on<AccountSelected>((event, emit) {
      emit(
        state.copyWith(
          transactionEntity: state.transactionEntity.copyWith(
            accountId: UniqueId.fromUniqueString(
              event.selectedAccount,
            ),
          ),
        ),
      );
    });
    on<CategorySelected>((event, emit) {
      emit(
        state.copyWith(
          transactionEntity: state.transactionEntity.copyWith(
            categoryId: UniqueId.fromUniqueString(
              event.selectedCategory,
            ),
          ),
        ),
      );
    });
    on<Saved>((event, emit) async {
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

        final transactionAmount =
            double.parse(state.transactionEntity.amount.getOrCrash());
        final TransactionType transactionType = state.transactionEntity.type;
        final accountId = state.transactionEntity.accountId.getOrCrash();
        final accountEither =
            await _iAccountRepository.watchByAccountId(accountId).first;

        final updatedAccountEither = accountEither.fold(
          (failure) => left<FirestoreFailure, AccountEntity>(failure),
          (account) {
            final currentBalance =
                double.parse(account.accountBalance.getOrCrash());
            final newBalance = transactionType == TransactionType.income
                ? currentBalance + transactionAmount
                : currentBalance - transactionAmount;
            final updatedAccount = account.copyWith(
                accountBalance: AccountBalance(newBalance.toString()));
            return right<FirestoreFailure, AccountEntity>(updatedAccount);
          },
        );
        updatedAccountEither.fold((failure) => failureOrSucess,
            (updatedAccount) async {
          final accountUpdateResult =
              await _iAccountRepository.update(updatedAccount);
          if (accountUpdateResult.isLeft()) {
            failureOrSucess = accountUpdateResult;
          }
        });
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
