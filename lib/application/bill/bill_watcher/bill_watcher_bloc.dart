import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:finca/domain/bill/bill.dart';
import 'package:finca/domain/bill/i_bill_repo.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bill_watcher_event.dart';
part 'bill_watcher_state.dart';
part 'bill_watcher_bloc.freezed.dart';

@injectable
class BillWatcherBloc extends Bloc<BillWatcherEvent, BillWatcherState> {
  final IBillRepository _iBillRepository;
  StreamSubscription<Either<FirestoreFailure, List<BillEntity>>>?
      _billStreamSubscription;
  BillWatcherBloc(this._iBillRepository) : super(const _Initial()) {
    on<_WatchAllStarted>((event, emit) async {
      emit(const BillWatcherState.loadInProgress());
      //  await Future.delayed(const Duration(milliseconds: 500));
      await _billStreamSubscription?.cancel();
      _billStreamSubscription = _iBillRepository.watchAll().listen(
            (failureOrBills) => add(
              BillWatcherEvent.billReceived(failureOrBills),
            ),
          );
    });
    on<_WatchBillStarted>((event, emit) async {
      emit(const BillWatcherState.loadInProgress());
      //  await Future.delayed(const Duration(milliseconds: 500));
      await _billStreamSubscription?.cancel();
      _billStreamSubscription = _iBillRepository.watchBill().listen(
            (failureOrBills) => add(
              BillWatcherEvent.billReceived(failureOrBills),
            ),
          );
    });
    on<_WatchSubscriptionStarted>((event, emit) async {
      emit(const BillWatcherState.loadInProgress());
      //  await Future.delayed(const Duration(milliseconds: 500));
      await _billStreamSubscription?.cancel();
      _billStreamSubscription = _iBillRepository.watchSubscription().listen(
            (failureOrBills) => add(
              BillWatcherEvent.billReceived(failureOrBills),
            ),
          );
    });
    on<_TransactionReceived>((event, emit) {
      emit(
        event.failureOrBills.fold(
          (f) => BillWatcherState.loadFailure(f),
          (bills) => BillWatcherState.loadSucess(bills),
        ),
      );
    });
  }
  @override
  Future<void> close() async {
    await _billStreamSubscription?.cancel();
    return super.close();
  }
}
