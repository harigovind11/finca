import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:finca/domain/account/account.dart';
import 'package:finca/domain/account/i_account_repo.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'account_watcher_event.dart';
part 'account_watcher_state.dart';
part 'account_watcher_bloc.freezed.dart';

@injectable
class AccountWatcherBloc
    extends Bloc<AccountWatcherEvent, AccountWatcherState> {
  final IAccountRepository _iAccountRepository;
  StreamSubscription<Either<FirestoreFailure, List<AccountEntity>>>?
      _accountStreamSubscription;
  AccountWatcherBloc(this._iAccountRepository) : super(const _Initial()) {
    on<_WatchAllStarted>((event, emit) async {
      emit(const AccountWatcherState.loadInProgress());
      await _accountStreamSubscription?.cancel();
      _accountStreamSubscription = _iAccountRepository.watchAll().listen(
          (failureOrAccounts) =>
              add(AccountWatcherEvent.accountReceived(failureOrAccounts)));
    });
    on<_AccountReceived>((event, emit) async {
      emit(
        event.failureOrAccounts.fold(
          (f) => AccountWatcherState.loadFailure(f),
          (accounts) => AccountWatcherState.loadSuccess(accounts),
        ),
      );
    });
  }
  @override
  Future<void> close() async {
    await _accountStreamSubscription?.cancel();
    return super.close();
  }
}
