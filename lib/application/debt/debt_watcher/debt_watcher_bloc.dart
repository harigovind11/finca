// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/domain/debt/debt.dart';
import 'package:finca/domain/debt/i_debt_repo.dart';
import 'package:finca/domain/services/balance_calculation.dart';

part 'debt_watcher_bloc.freezed.dart';
part 'debt_watcher_event.dart';
part 'debt_watcher_state.dart';

class DebtWatcherBloc extends Bloc<DebtWatcherEvent, DebtWatcherState> {
  final IDebtRepository _iDebtRepository;
  final BalanceCalculationService _balanceCalculationService;
  StreamSubscription<Either<FirestoreFailure, List<DebtEntity>>>?
      _debtStreamSubscription;
  DebtWatcherBloc(
    this._iDebtRepository,
    this._balanceCalculationService,
  ) : super(const _Initial()) {
    on<_WatchAllStarted>((event, emit) async {
      emit(const DebtWatcherState.loadInProgress());
      await _debtStreamSubscription?.cancel();
      _debtStreamSubscription = _iDebtRepository.watchAll().listen(
          (failureOrDebts) =>
              add(DebtWatcherEvent.transactionReceived(failureOrDebts)));
    });
    on<_WatchDebtStarted>((event, emit) async {
      emit(const DebtWatcherState.loadInProgress());
      await _debtStreamSubscription?.cancel();
      _debtStreamSubscription = _iDebtRepository.watchDebt().listen(
          (failureOrDebts) =>
              add(DebtWatcherEvent.transactionReceived(failureOrDebts)));
    });
    on<_WatchCreditStarted>((event, emit) async {
      emit(const DebtWatcherState.loadInProgress());
      await _debtStreamSubscription?.cancel();
      _debtStreamSubscription = _iDebtRepository.watchCredit().listen(
          (failureOrDebts) =>
              add(DebtWatcherEvent.transactionReceived(failureOrDebts)));
    });
    on<_TransactionReceived>((event, emit) {
      final totalDebt = _balanceCalculationService
          .calculateTotalDebt(event.failureOrDebts.getOrElse(() => []));
      final totalCredit = _balanceCalculationService
          .calculateTotalCredit(event.failureOrDebts.getOrElse(() => []));

      emit(
        event.failureOrDebts.fold(
          (f) => DebtWatcherState.loadFailure(f),
          (debts) => DebtWatcherState.loadSucess(debts, totalDebt, totalCredit),
        ),
      );
    });
  }
  @override
  Future<void> close() async {
    await _debtStreamSubscription?.cancel();
    return super.close();
  }
}
