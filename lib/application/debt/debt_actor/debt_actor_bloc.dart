import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/domain/debt/debt.dart';
import 'package:finca/domain/debt/i_debt_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'debt_actor_event.dart';
part 'debt_actor_state.dart';
part 'debt_actor_bloc.freezed.dart';

@injectable
class DebtActorBloc extends Bloc<DebtActorEvent, DebtActorState> {
  final IDebtRepository _iDebtRepository;
  DebtActorBloc(this._iDebtRepository) : super(const _Initial()) {
    on<_Deleted>((event, emit) async {
      emit(const DebtActorState.actionInProgress());
      final possibleFailure = await _iDebtRepository.delete(event.debtEntity);
      emit(
        possibleFailure.fold(
          (f) => DebtActorState.deleteFailure(f),
          (_) => const DebtActorState.deleteSucess(),
        ),
      );
    });
  }
}
