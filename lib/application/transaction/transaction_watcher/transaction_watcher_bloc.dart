import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/services/balance_calculation.dart';
import 'package:finca/domain/transaction/i_transaction_repo.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/domain/transaction/transaction_faillure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transaction_watcher_event.dart';
part 'transaction_watcher_state.dart';
part 'transaction_watcher_bloc.freezed.dart';

@injectable
class TransactionWatcherBloc
    extends Bloc<TransactionWatcherEvent, TransactionWatcherState> {
  final ITransactionRepository _iTransactionRepository;
  final BalanceCalculationService _balanceCalculationService;
  StreamSubscription<Either<TransactionFailure, List<TransactionEntity>>>?
      _transactionStreamSubscription;
  TransactionWatcherBloc(
      this._iTransactionRepository, this._balanceCalculationService)
      : super(const _Initial()) {
    on<_WatchAllStarted>((event, emit) async {
      emit(const TransactionWatcherState.loadInProgress());
      await _transactionStreamSubscription?.cancel();
      _transactionStreamSubscription =
          _iTransactionRepository.watchAll().listen(
                (failureOrTransactions) => add(
                  TransactionWatcherEvent.transactionReceived(
                      failureOrTransactions),
                ),
              );
    });
    on<_WatchIncomeTransactionStarted>((event, emit) async {
      emit(const TransactionWatcherState.loadInProgress());
      await _transactionStreamSubscription?.cancel();
      _transactionStreamSubscription =
          _iTransactionRepository.watchIncomeTransaction().listen(
                (failureOrTransactions) => add(
                  TransactionWatcherEvent.transactionReceived(
                      failureOrTransactions),
                ),
              );
    });
    on<_WatchExpenseTransactionStarted>((event, emit) async {
      emit(const TransactionWatcherState.loadInProgress());
      await _transactionStreamSubscription?.cancel();
      _transactionStreamSubscription =
          _iTransactionRepository.watchExpenseTransaction().listen(
                (failureOrTransactions) => add(
                  TransactionWatcherEvent.transactionReceived(
                      failureOrTransactions),
                ),
              );
    });
    on<_TransactionReceived>((event, emit) async {
      final totalBalance = _balanceCalculationService.calculateTotalBalance(
          event.failureOrTransactions.getOrElse(() => []));
      final totalIncome = _balanceCalculationService
          .calculateTotalncome(event.failureOrTransactions.getOrElse(() => []));
      final totalExpense = _balanceCalculationService.calculateTotalExpense(
          event.failureOrTransactions.getOrElse(() => []));
      emit(
        event.failureOrTransactions.fold(
          (f) => TransactionWatcherState.loadFailure(f),
          (transactions) => TransactionWatcherState.loadSucess(
              transactions, totalBalance, totalIncome, totalExpense),
        ),
      );
    });
  }

  @override
  Future<void> close() async {
    await _transactionStreamSubscription?.cancel();
    return super.close();
  }
}
