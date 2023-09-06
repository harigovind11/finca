import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/domain/transaction/transaction_faillure.dart';
import 'package:finca/infrastructure/transaction/transaction_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'transaction_watcher_event.dart';
part 'transaction_watcher_state.dart';
part 'transaction_watcher_bloc.freezed.dart';

class TransactionWatcherBloc
    extends Bloc<TransactionWatcherEvent, TransactionWatcherState> {
  final TransactionRepo _transactionRepo;
  StreamSubscription<Either<TransactionFailure, KtList<TransactionCard>>>?
      _transactionStreamSubscription;
  TransactionWatcherBloc(this._transactionRepo) : super(const _Initial()) {
    on<_WatchAllStarted>((event, emit) async {
      emit(const TransactionWatcherState.loadInProgress());
      await _transactionStreamSubscription?.cancel();
      _transactionStreamSubscription = _transactionRepo.watchAll().listen(
            (failureOrTransactions) => add(
              TransactionWatcherEvent.transactionReceived(
                  failureOrTransactions),
            ),
          );
    });
    on<_TransactionReceived>((event, emit) async {
      emit(
        event.failureOrTransactions.fold(
          (f) => TransactionWatcherState.loadFailure(f),
          (transactions) => TransactionWatcherState.loadSucess(transactions),
        ),
      );
    });
    @override
    Future<void> close() async {
      await _transactionStreamSubscription?.cancel();
      return super.close();
    }
  }
}
