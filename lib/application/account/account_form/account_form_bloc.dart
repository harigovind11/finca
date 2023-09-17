import 'package:dartz/dartz.dart';

import 'package:finca/domain/account/account.dart';
import 'package:finca/domain/account/i_account_repo.dart';
import 'package:finca/domain/account/value_objects.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'account_form_event.dart';
part 'account_form_state.dart';
part 'account_form_bloc.freezed.dart';

@injectable
class AccountFormBloc extends Bloc<AccountFormEvent, AccountFormState> {
  final IAccountRepository _iAccountRepository;
  AccountFormBloc(this._iAccountRepository)
      : super(AccountFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(
        event.initialOption.fold(
          () => state,
          (initial) => state.copyWith(accountEntity: initial, isEditing: true),
        ),
      );
    });
    on<_AccountNameChanged>((event, emit) {
      emit(
        state.copyWith(
          accountEntity: state.accountEntity.copyWith(
            accountName: AccountName(event.accountNameStr),
          ),
        ),
      );
    });
    on<_AccountBalanceChanged>((event, emit) {
      emit(
        state.copyWith(
          accountEntity: state.accountEntity.copyWith(
            accountBalance: AccountBalance(event.accountBalanceStr),
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
      if (state.accountEntity.failureOption.isNone()) {
        failureOrSucess = state.isEditing
            ? await _iAccountRepository.update(state.accountEntity)
            : await _iAccountRepository.create(state.accountEntity);
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
