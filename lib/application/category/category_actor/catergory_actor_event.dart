part of 'catergory_actor_bloc.dart';

@freezed
class CatergoryActorEvent with _$CatergoryActorEvent {
  const factory CatergoryActorEvent.deleted(CategoryEntity categoryEntity) =
      _Deleted;
}
