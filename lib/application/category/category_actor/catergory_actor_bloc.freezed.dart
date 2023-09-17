// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catergory_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatergoryActorEvent {
  CategoryEntity get categoryEntity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryEntity categoryEntity) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryEntity categoryEntity)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryEntity categoryEntity)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatergoryActorEventCopyWith<CatergoryActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatergoryActorEventCopyWith<$Res> {
  factory $CatergoryActorEventCopyWith(
          CatergoryActorEvent value, $Res Function(CatergoryActorEvent) then) =
      _$CatergoryActorEventCopyWithImpl<$Res, CatergoryActorEvent>;
  @useResult
  $Res call({CategoryEntity categoryEntity});

  $CategoryEntityCopyWith<$Res> get categoryEntity;
}

/// @nodoc
class _$CatergoryActorEventCopyWithImpl<$Res, $Val extends CatergoryActorEvent>
    implements $CatergoryActorEventCopyWith<$Res> {
  _$CatergoryActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryEntity = null,
  }) {
    return _then(_value.copyWith(
      categoryEntity: null == categoryEntity
          ? _value.categoryEntity
          : categoryEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res> get categoryEntity {
    return $CategoryEntityCopyWith<$Res>(_value.categoryEntity, (value) {
      return _then(_value.copyWith(categoryEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeletedCopyWith<$Res>
    implements $CatergoryActorEventCopyWith<$Res> {
  factory _$$_DeletedCopyWith(
          _$_Deleted value, $Res Function(_$_Deleted) then) =
      __$$_DeletedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryEntity categoryEntity});

  @override
  $CategoryEntityCopyWith<$Res> get categoryEntity;
}

/// @nodoc
class __$$_DeletedCopyWithImpl<$Res>
    extends _$CatergoryActorEventCopyWithImpl<$Res, _$_Deleted>
    implements _$$_DeletedCopyWith<$Res> {
  __$$_DeletedCopyWithImpl(_$_Deleted _value, $Res Function(_$_Deleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryEntity = null,
  }) {
    return _then(_$_Deleted(
      null == categoryEntity
          ? _value.categoryEntity
          : categoryEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
    ));
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.categoryEntity);

  @override
  final CategoryEntity categoryEntity;

  @override
  String toString() {
    return 'CatergoryActorEvent.deleted(categoryEntity: $categoryEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Deleted &&
            (identical(other.categoryEntity, categoryEntity) ||
                other.categoryEntity == categoryEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletedCopyWith<_$_Deleted> get copyWith =>
      __$$_DeletedCopyWithImpl<_$_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryEntity categoryEntity) deleted,
  }) {
    return deleted(categoryEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryEntity categoryEntity)? deleted,
  }) {
    return deleted?.call(categoryEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryEntity categoryEntity)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(categoryEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements CatergoryActorEvent {
  const factory _Deleted(final CategoryEntity categoryEntity) = _$_Deleted;

  @override
  CategoryEntity get categoryEntity;
  @override
  @JsonKey(ignore: true)
  _$$_DeletedCopyWith<_$_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CatergoryActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(FirestoreFailure firestoreFailure) deleteFailure,
    required TResult Function() deleteSucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(FirestoreFailure firestoreFailure)? deleteFailure,
    TResult? Function()? deleteSucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(FirestoreFailure firestoreFailure)? deleteFailure,
    TResult Function()? deleteSucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSucess value) deleteSucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSucess value)? deleteSucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSucess value)? deleteSucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatergoryActorStateCopyWith<$Res> {
  factory $CatergoryActorStateCopyWith(
          CatergoryActorState value, $Res Function(CatergoryActorState) then) =
      _$CatergoryActorStateCopyWithImpl<$Res, CatergoryActorState>;
}

/// @nodoc
class _$CatergoryActorStateCopyWithImpl<$Res, $Val extends CatergoryActorState>
    implements $CatergoryActorStateCopyWith<$Res> {
  _$CatergoryActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CatergoryActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CatergoryActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(FirestoreFailure firestoreFailure) deleteFailure,
    required TResult Function() deleteSucess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(FirestoreFailure firestoreFailure)? deleteFailure,
    TResult? Function()? deleteSucess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(FirestoreFailure firestoreFailure)? deleteFailure,
    TResult Function()? deleteSucess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSucess value) deleteSucess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSucess value)? deleteSucess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSucess value)? deleteSucess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CatergoryActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ActionInProgressCopyWith<$Res> {
  factory _$$_ActionInProgressCopyWith(
          _$_ActionInProgress value, $Res Function(_$_ActionInProgress) then) =
      __$$_ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActionInProgressCopyWithImpl<$Res>
    extends _$CatergoryActorStateCopyWithImpl<$Res, _$_ActionInProgress>
    implements _$$_ActionInProgressCopyWith<$Res> {
  __$$_ActionInProgressCopyWithImpl(
      _$_ActionInProgress _value, $Res Function(_$_ActionInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'CatergoryActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(FirestoreFailure firestoreFailure) deleteFailure,
    required TResult Function() deleteSucess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(FirestoreFailure firestoreFailure)? deleteFailure,
    TResult? Function()? deleteSucess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(FirestoreFailure firestoreFailure)? deleteFailure,
    TResult Function()? deleteSucess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSucess value) deleteSucess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSucess value)? deleteSucess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSucess value)? deleteSucess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements CatergoryActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$$_DeleteFailureCopyWith<$Res> {
  factory _$$_DeleteFailureCopyWith(
          _$_DeleteFailure value, $Res Function(_$_DeleteFailure) then) =
      __$$_DeleteFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({FirestoreFailure firestoreFailure});

  $FirestoreFailureCopyWith<$Res> get firestoreFailure;
}

/// @nodoc
class __$$_DeleteFailureCopyWithImpl<$Res>
    extends _$CatergoryActorStateCopyWithImpl<$Res, _$_DeleteFailure>
    implements _$$_DeleteFailureCopyWith<$Res> {
  __$$_DeleteFailureCopyWithImpl(
      _$_DeleteFailure _value, $Res Function(_$_DeleteFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firestoreFailure = null,
  }) {
    return _then(_$_DeleteFailure(
      null == firestoreFailure
          ? _value.firestoreFailure
          : firestoreFailure // ignore: cast_nullable_to_non_nullable
              as FirestoreFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FirestoreFailureCopyWith<$Res> get firestoreFailure {
    return $FirestoreFailureCopyWith<$Res>(_value.firestoreFailure, (value) {
      return _then(_value.copyWith(firestoreFailure: value));
    });
  }
}

/// @nodoc

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.firestoreFailure);

  @override
  final FirestoreFailure firestoreFailure;

  @override
  String toString() {
    return 'CatergoryActorState.deleteFailure(firestoreFailure: $firestoreFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFailure &&
            (identical(other.firestoreFailure, firestoreFailure) ||
                other.firestoreFailure == firestoreFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firestoreFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteFailureCopyWith<_$_DeleteFailure> get copyWith =>
      __$$_DeleteFailureCopyWithImpl<_$_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(FirestoreFailure firestoreFailure) deleteFailure,
    required TResult Function() deleteSucess,
  }) {
    return deleteFailure(firestoreFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(FirestoreFailure firestoreFailure)? deleteFailure,
    TResult? Function()? deleteSucess,
  }) {
    return deleteFailure?.call(firestoreFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(FirestoreFailure firestoreFailure)? deleteFailure,
    TResult Function()? deleteSucess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(firestoreFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSucess value) deleteSucess,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSucess value)? deleteSucess,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSucess value)? deleteSucess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements CatergoryActorState {
  const factory _DeleteFailure(final FirestoreFailure firestoreFailure) =
      _$_DeleteFailure;

  FirestoreFailure get firestoreFailure;
  @JsonKey(ignore: true)
  _$$_DeleteFailureCopyWith<_$_DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteSucessCopyWith<$Res> {
  factory _$$_DeleteSucessCopyWith(
          _$_DeleteSucess value, $Res Function(_$_DeleteSucess) then) =
      __$$_DeleteSucessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteSucessCopyWithImpl<$Res>
    extends _$CatergoryActorStateCopyWithImpl<$Res, _$_DeleteSucess>
    implements _$$_DeleteSucessCopyWith<$Res> {
  __$$_DeleteSucessCopyWithImpl(
      _$_DeleteSucess _value, $Res Function(_$_DeleteSucess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteSucess implements _DeleteSucess {
  const _$_DeleteSucess();

  @override
  String toString() {
    return 'CatergoryActorState.deleteSucess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteSucess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(FirestoreFailure firestoreFailure) deleteFailure,
    required TResult Function() deleteSucess,
  }) {
    return deleteSucess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(FirestoreFailure firestoreFailure)? deleteFailure,
    TResult? Function()? deleteSucess,
  }) {
    return deleteSucess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(FirestoreFailure firestoreFailure)? deleteFailure,
    TResult Function()? deleteSucess,
    required TResult orElse(),
  }) {
    if (deleteSucess != null) {
      return deleteSucess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSucess value) deleteSucess,
  }) {
    return deleteSucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSucess value)? deleteSucess,
  }) {
    return deleteSucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSucess value)? deleteSucess,
    required TResult orElse(),
  }) {
    if (deleteSucess != null) {
      return deleteSucess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSucess implements CatergoryActorState {
  const factory _DeleteSucess() = _$_DeleteSucess;
}
