import 'package:finca/domain/transaction/i_transaction_repo.dart';
import 'package:finca/domain/transaction/transaction.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'transaction_actor_event.dart';
part 'transaction_actor_state.dart';
part 'transaction_actor_bloc.freezed.dart';

@injectable
class TransactionActorBloc
    extends Bloc<TransactionActorEvent, TransactionActorState> {
  final ITransactionRepository _iTransactionRepository;
  TransactionActorBloc(this._iTransactionRepository) : super(const _Initial()) {
    on<_Deleted>((event, emit) async {
      emit(const TransactionActorState.actionInProgress());
      final possibleFailure =
          await _iTransactionRepository.delete(event.transactionEntity);
      emit(
        possibleFailure.fold(
          (f) => TransactionActorState.deleteFailure(f),
          (_) => const TransactionActorState.deleteSucess(),
        ),
      );
    });
  }
}
