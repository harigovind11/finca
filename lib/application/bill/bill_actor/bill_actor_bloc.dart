import 'package:finca/domain/bill/bill.dart';
import 'package:finca/domain/bill/i_bill_repo.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bill_actor_event.dart';
part 'bill_actor_state.dart';
part 'bill_actor_bloc.freezed.dart';

@injectable
class BillActorBloc extends Bloc<BillActorEvent, BillActorState> {
  final IBillRepository _iBillRepository;
  BillActorBloc(this._iBillRepository) : super(const _Initial()) {
    on<_Deleted>((event, emit) async {
      emit(const BillActorState.actionInProgress());
      final possibleFailure = await _iBillRepository.delete(event.billEntity);
      emit(
        possibleFailure.fold(
          (f) => BillActorState.deleteFailure(f),
          (_) => const BillActorState.deleteSucess(),
        ),
      );
    });
  }
}
