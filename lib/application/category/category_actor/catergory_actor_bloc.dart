import 'package:bloc/bloc.dart';
import 'package:finca/domain/category/category.dart';
import 'package:finca/domain/category/i_category.dart';
import 'package:finca/domain/core/firestore_faillure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'catergory_actor_event.dart';
part 'catergory_actor_state.dart';
part 'catergory_actor_bloc.freezed.dart';

@injectable
class CatergoryActorBloc
    extends Bloc<CatergoryActorEvent, CatergoryActorState> {
  final ICategoryRepository _iCategoryRepository;
  CatergoryActorBloc(this._iCategoryRepository) : super(const _Initial()) {
    on<_Deleted>((event, emit) async {
      emit(const CatergoryActorState.actionInProgress());
      final possibleFailure =
          await _iCategoryRepository.delete(event.categoryEntity);
      emit(
        possibleFailure.fold(
          (f) => CatergoryActorState.deleteFailure(f),
          (_) => const CatergoryActorState.deleteSucess(),
        ),
      );
    });
  }
}
