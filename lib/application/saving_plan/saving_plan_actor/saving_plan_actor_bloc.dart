import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:finca/domain/saving_plan/i_saving_plan_repo.dart';
import 'package:finca/domain/saving_plan/saving_plan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'saving_plan_actor_event.dart';
part 'saving_plan_actor_state.dart';
part 'saving_plan_actor_bloc.freezed.dart';

@injectable
class SavingPlanActorBloc
    extends Bloc<SavingPlanActorEvent, SavingPlanActorState> {
  final ISavingPlanRepository _iSavingPlanRepository;
  SavingPlanActorBloc(this._iSavingPlanRepository) : super(const _Initial()) {
    on<_Deleted>((event, emit) async {
      emit(const SavingPlanActorState.actionInProgress());
      final possibleFailure =
          await _iSavingPlanRepository.delete(event.savingPlanEntity);
      emit(
        possibleFailure.fold(
          (f) => SavingPlanActorState.deleteFailure(f),
          (_) => const SavingPlanActorState.deleteSucess(),
        ),
      );
    });
  }
}
