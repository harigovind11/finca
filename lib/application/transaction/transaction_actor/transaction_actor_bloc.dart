import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/domain/transaction/transaction_faillure.dart';
import 'package:finca/infrastructure/transaction/transaction_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_actor_event.dart';
part 'transaction_actor_state.dart';
part 'transaction_actor_bloc.freezed.dart';

class TransactionActorBloc
    extends Bloc<TransactionActorEvent, TransactionActorState> {
  final TransactionRepo _transactionRepo;
  TransactionActorBloc(this._transactionRepo) : super(const _Initial()) {
    on<_Deleted>((event, emit) async {
      emit(const TransactionActorState.actionInProgress());
      final possibleFailure = await _transactionRepo.delete(event.transaction);
      emit(
        possibleFailure.fold(
          (f) => TransactionActorState.deleteFailure(f),
          (_) => const TransactionActorState.deleteSucess(),
        ),
      );
    });
  }
}
