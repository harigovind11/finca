// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BillWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchBillStarted,
    required TResult Function() watchSubscriptionStarted,
    required TResult Function(
            Either<FirestoreFailure, List<BillEntity>> failureOrBills)
        billReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchBillStarted,
    TResult? Function()? watchSubscriptionStarted,
    TResult? Function(
            Either<FirestoreFailure, List<BillEntity>> failureOrBills)?
        billReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchBillStarted,
    TResult Function()? watchSubscriptionStarted,
    TResult Function(Either<FirestoreFailure, List<BillEntity>> failureOrBills)?
        billReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchBillStarted value) watchBillStarted,
    required TResult Function(_WatchSubscriptionStarted value)
        watchSubscriptionStarted,
    required TResult Function(_TransactionReceived value) billReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchBillStarted value)? watchBillStarted,
    TResult? Function(_WatchSubscriptionStarted value)?
        watchSubscriptionStarted,
    TResult? Function(_TransactionReceived value)? billReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchBillStarted value)? watchBillStarted,
    TResult Function(_WatchSubscriptionStarted value)? watchSubscriptionStarted,
    TResult Function(_TransactionReceived value)? billReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillWatcherEventCopyWith<$Res> {
  factory $BillWatcherEventCopyWith(
          BillWatcherEvent value, $Res Function(BillWatcherEvent) then) =
      _$BillWatcherEventCopyWithImpl<$Res, BillWatcherEvent>;
}

/// @nodoc
class _$BillWatcherEventCopyWithImpl<$Res, $Val extends BillWatcherEvent>
    implements $BillWatcherEventCopyWith<$Res> {
  _$BillWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WatchAllStartedCopyWith<$Res> {
  factory _$$_WatchAllStartedCopyWith(
          _$_WatchAllStarted value, $Res Function(_$_WatchAllStarted) then) =
      __$$_WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchAllStartedCopyWithImpl<$Res>
    extends _$BillWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
    implements _$$_WatchAllStartedCopyWith<$Res> {
  __$$_WatchAllStartedCopyWithImpl(
      _$_WatchAllStarted _value, $Res Function(_$_WatchAllStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'BillWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchBillStarted,
    required TResult Function() watchSubscriptionStarted,
    required TResult Function(
            Either<FirestoreFailure, List<BillEntity>> failureOrBills)
        billReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchBillStarted,
    TResult? Function()? watchSubscriptionStarted,
    TResult? Function(
            Either<FirestoreFailure, List<BillEntity>> failureOrBills)?
        billReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchBillStarted,
    TResult Function()? watchSubscriptionStarted,
    TResult Function(Either<FirestoreFailure, List<BillEntity>> failureOrBills)?
        billReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchBillStarted value) watchBillStarted,
    required TResult Function(_WatchSubscriptionStarted value)
        watchSubscriptionStarted,
    required TResult Function(_TransactionReceived value) billReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchBillStarted value)? watchBillStarted,
    TResult? Function(_WatchSubscriptionStarted value)?
        watchSubscriptionStarted,
    TResult? Function(_TransactionReceived value)? billReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchBillStarted value)? watchBillStarted,
    TResult Function(_WatchSubscriptionStarted value)? watchSubscriptionStarted,
    TResult Function(_TransactionReceived value)? billReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements BillWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$$_WatchBillStartedCopyWith<$Res> {
  factory _$$_WatchBillStartedCopyWith(
          _$_WatchBillStarted value, $Res Function(_$_WatchBillStarted) then) =
      __$$_WatchBillStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchBillStartedCopyWithImpl<$Res>
    extends _$BillWatcherEventCopyWithImpl<$Res, _$_WatchBillStarted>
    implements _$$_WatchBillStartedCopyWith<$Res> {
  __$$_WatchBillStartedCopyWithImpl(
      _$_WatchBillStarted _value, $Res Function(_$_WatchBillStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchBillStarted implements _WatchBillStarted {
  const _$_WatchBillStarted();

  @override
  String toString() {
    return 'BillWatcherEvent.watchBillStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchBillStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchBillStarted,
    required TResult Function() watchSubscriptionStarted,
    required TResult Function(
            Either<FirestoreFailure, List<BillEntity>> failureOrBills)
        billReceived,
  }) {
    return watchBillStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchBillStarted,
    TResult? Function()? watchSubscriptionStarted,
    TResult? Function(
            Either<FirestoreFailure, List<BillEntity>> failureOrBills)?
        billReceived,
  }) {
    return watchBillStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchBillStarted,
    TResult Function()? watchSubscriptionStarted,
    TResult Function(Either<FirestoreFailure, List<BillEntity>> failureOrBills)?
        billReceived,
    required TResult orElse(),
  }) {
    if (watchBillStarted != null) {
      return watchBillStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchBillStarted value) watchBillStarted,
    required TResult Function(_WatchSubscriptionStarted value)
        watchSubscriptionStarted,
    required TResult Function(_TransactionReceived value) billReceived,
  }) {
    return watchBillStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchBillStarted value)? watchBillStarted,
    TResult? Function(_WatchSubscriptionStarted value)?
        watchSubscriptionStarted,
    TResult? Function(_TransactionReceived value)? billReceived,
  }) {
    return watchBillStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchBillStarted value)? watchBillStarted,
    TResult Function(_WatchSubscriptionStarted value)? watchSubscriptionStarted,
    TResult Function(_TransactionReceived value)? billReceived,
    required TResult orElse(),
  }) {
    if (watchBillStarted != null) {
      return watchBillStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchBillStarted implements BillWatcherEvent {
  const factory _WatchBillStarted() = _$_WatchBillStarted;
}

/// @nodoc
abstract class _$$_WatchSubscriptionStartedCopyWith<$Res> {
  factory _$$_WatchSubscriptionStartedCopyWith(
          _$_WatchSubscriptionStarted value,
          $Res Function(_$_WatchSubscriptionStarted) then) =
      __$$_WatchSubscriptionStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchSubscriptionStartedCopyWithImpl<$Res>
    extends _$BillWatcherEventCopyWithImpl<$Res, _$_WatchSubscriptionStarted>
    implements _$$_WatchSubscriptionStartedCopyWith<$Res> {
  __$$_WatchSubscriptionStartedCopyWithImpl(_$_WatchSubscriptionStarted _value,
      $Res Function(_$_WatchSubscriptionStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchSubscriptionStarted implements _WatchSubscriptionStarted {
  const _$_WatchSubscriptionStarted();

  @override
  String toString() {
    return 'BillWatcherEvent.watchSubscriptionStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchSubscriptionStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchBillStarted,
    required TResult Function() watchSubscriptionStarted,
    required TResult Function(
            Either<FirestoreFailure, List<BillEntity>> failureOrBills)
        billReceived,
  }) {
    return watchSubscriptionStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchBillStarted,
    TResult? Function()? watchSubscriptionStarted,
    TResult? Function(
            Either<FirestoreFailure, List<BillEntity>> failureOrBills)?
        billReceived,
  }) {
    return watchSubscriptionStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchBillStarted,
    TResult Function()? watchSubscriptionStarted,
    TResult Function(Either<FirestoreFailure, List<BillEntity>> failureOrBills)?
        billReceived,
    required TResult orElse(),
  }) {
    if (watchSubscriptionStarted != null) {
      return watchSubscriptionStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchBillStarted value) watchBillStarted,
    required TResult Function(_WatchSubscriptionStarted value)
        watchSubscriptionStarted,
    required TResult Function(_TransactionReceived value) billReceived,
  }) {
    return watchSubscriptionStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchBillStarted value)? watchBillStarted,
    TResult? Function(_WatchSubscriptionStarted value)?
        watchSubscriptionStarted,
    TResult? Function(_TransactionReceived value)? billReceived,
  }) {
    return watchSubscriptionStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchBillStarted value)? watchBillStarted,
    TResult Function(_WatchSubscriptionStarted value)? watchSubscriptionStarted,
    TResult Function(_TransactionReceived value)? billReceived,
    required TResult orElse(),
  }) {
    if (watchSubscriptionStarted != null) {
      return watchSubscriptionStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchSubscriptionStarted implements BillWatcherEvent {
  const factory _WatchSubscriptionStarted() = _$_WatchSubscriptionStarted;
}

/// @nodoc
abstract class _$$_TransactionReceivedCopyWith<$Res> {
  factory _$$_TransactionReceivedCopyWith(_$_TransactionReceived value,
          $Res Function(_$_TransactionReceived) then) =
      __$$_TransactionReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<FirestoreFailure, List<BillEntity>> failureOrBills});
}

/// @nodoc
class __$$_TransactionReceivedCopyWithImpl<$Res>
    extends _$BillWatcherEventCopyWithImpl<$Res, _$_TransactionReceived>
    implements _$$_TransactionReceivedCopyWith<$Res> {
  __$$_TransactionReceivedCopyWithImpl(_$_TransactionReceived _value,
      $Res Function(_$_TransactionReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrBills = null,
  }) {
    return _then(_$_TransactionReceived(
      null == failureOrBills
          ? _value.failureOrBills
          : failureOrBills // ignore: cast_nullable_to_non_nullable
              as Either<FirestoreFailure, List<BillEntity>>,
    ));
  }
}

/// @nodoc

class _$_TransactionReceived implements _TransactionReceived {
  const _$_TransactionReceived(this.failureOrBills);

  @override
  final Either<FirestoreFailure, List<BillEntity>> failureOrBills;

  @override
  String toString() {
    return 'BillWatcherEvent.billReceived(failureOrBills: $failureOrBills)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionReceived &&
            (identical(other.failureOrBills, failureOrBills) ||
                other.failureOrBills == failureOrBills));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrBills);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionReceivedCopyWith<_$_TransactionReceived> get copyWith =>
      __$$_TransactionReceivedCopyWithImpl<_$_TransactionReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchBillStarted,
    required TResult Function() watchSubscriptionStarted,
    required TResult Function(
            Either<FirestoreFailure, List<BillEntity>> failureOrBills)
        billReceived,
  }) {
    return billReceived(failureOrBills);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchBillStarted,
    TResult? Function()? watchSubscriptionStarted,
    TResult? Function(
            Either<FirestoreFailure, List<BillEntity>> failureOrBills)?
        billReceived,
  }) {
    return billReceived?.call(failureOrBills);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchBillStarted,
    TResult Function()? watchSubscriptionStarted,
    TResult Function(Either<FirestoreFailure, List<BillEntity>> failureOrBills)?
        billReceived,
    required TResult orElse(),
  }) {
    if (billReceived != null) {
      return billReceived(failureOrBills);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchBillStarted value) watchBillStarted,
    required TResult Function(_WatchSubscriptionStarted value)
        watchSubscriptionStarted,
    required TResult Function(_TransactionReceived value) billReceived,
  }) {
    return billReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchBillStarted value)? watchBillStarted,
    TResult? Function(_WatchSubscriptionStarted value)?
        watchSubscriptionStarted,
    TResult? Function(_TransactionReceived value)? billReceived,
  }) {
    return billReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchBillStarted value)? watchBillStarted,
    TResult Function(_WatchSubscriptionStarted value)? watchSubscriptionStarted,
    TResult Function(_TransactionReceived value)? billReceived,
    required TResult orElse(),
  }) {
    if (billReceived != null) {
      return billReceived(this);
    }
    return orElse();
  }
}

abstract class _TransactionReceived implements BillWatcherEvent {
  const factory _TransactionReceived(
          final Either<FirestoreFailure, List<BillEntity>> failureOrBills) =
      _$_TransactionReceived;

  Either<FirestoreFailure, List<BillEntity>> get failureOrBills;
  @JsonKey(ignore: true)
  _$$_TransactionReceivedCopyWith<_$_TransactionReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BillWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<BillEntity> bills) loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<BillEntity> bills)? loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BillEntity> bills)? loadSucess,
    TResult Function(FirestoreFailure firestoreFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSucess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSucess value)? loadSucess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillWatcherStateCopyWith<$Res> {
  factory $BillWatcherStateCopyWith(
          BillWatcherState value, $Res Function(BillWatcherState) then) =
      _$BillWatcherStateCopyWithImpl<$Res, BillWatcherState>;
}

/// @nodoc
class _$BillWatcherStateCopyWithImpl<$Res, $Val extends BillWatcherState>
    implements $BillWatcherStateCopyWith<$Res> {
  _$BillWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$BillWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BillWatcherState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(List<BillEntity> bills) loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<BillEntity> bills)? loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BillEntity> bills)? loadSucess,
    TResult Function(FirestoreFailure firestoreFailure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSucess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSucess value)? loadSucess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BillWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$BillWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'BillWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<BillEntity> bills) loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<BillEntity> bills)? loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BillEntity> bills)? loadSucess,
    TResult Function(FirestoreFailure firestoreFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSucess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSucess value)? loadSucess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements BillWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSucessCopyWith<$Res> {
  factory _$$_LoadSucessCopyWith(
          _$_LoadSucess value, $Res Function(_$_LoadSucess) then) =
      __$$_LoadSucessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BillEntity> bills});
}

/// @nodoc
class __$$_LoadSucessCopyWithImpl<$Res>
    extends _$BillWatcherStateCopyWithImpl<$Res, _$_LoadSucess>
    implements _$$_LoadSucessCopyWith<$Res> {
  __$$_LoadSucessCopyWithImpl(
      _$_LoadSucess _value, $Res Function(_$_LoadSucess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bills = null,
  }) {
    return _then(_$_LoadSucess(
      null == bills
          ? _value._bills
          : bills // ignore: cast_nullable_to_non_nullable
              as List<BillEntity>,
    ));
  }
}

/// @nodoc

class _$_LoadSucess implements _LoadSucess {
  const _$_LoadSucess(final List<BillEntity> bills) : _bills = bills;

  final List<BillEntity> _bills;
  @override
  List<BillEntity> get bills {
    if (_bills is EqualUnmodifiableListView) return _bills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bills);
  }

  @override
  String toString() {
    return 'BillWatcherState.loadSucess(bills: $bills)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSucess &&
            const DeepCollectionEquality().equals(other._bills, _bills));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bills));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSucessCopyWith<_$_LoadSucess> get copyWith =>
      __$$_LoadSucessCopyWithImpl<_$_LoadSucess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<BillEntity> bills) loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) {
    return loadSucess(bills);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<BillEntity> bills)? loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) {
    return loadSucess?.call(bills);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BillEntity> bills)? loadSucess,
    TResult Function(FirestoreFailure firestoreFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSucess != null) {
      return loadSucess(bills);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSucess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSucess value)? loadSucess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSucess != null) {
      return loadSucess(this);
    }
    return orElse();
  }
}

abstract class _LoadSucess implements BillWatcherState {
  const factory _LoadSucess(final List<BillEntity> bills) = _$_LoadSucess;

  List<BillEntity> get bills;
  @JsonKey(ignore: true)
  _$$_LoadSucessCopyWith<_$_LoadSucess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({FirestoreFailure firestoreFailure});

  $FirestoreFailureCopyWith<$Res> get firestoreFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$BillWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firestoreFailure = null,
  }) {
    return _then(_$_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.firestoreFailure);

  @override
  final FirestoreFailure firestoreFailure;

  @override
  String toString() {
    return 'BillWatcherState.loadFailure(firestoreFailure: $firestoreFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.firestoreFailure, firestoreFailure) ||
                other.firestoreFailure == firestoreFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firestoreFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<BillEntity> bills) loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) {
    return loadFailure(firestoreFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<BillEntity> bills)? loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) {
    return loadFailure?.call(firestoreFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BillEntity> bills)? loadSucess,
    TResult Function(FirestoreFailure firestoreFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(firestoreFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSucess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSucess value)? loadSucess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSucess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements BillWatcherState {
  const factory _LoadFailure(final FirestoreFailure firestoreFailure) =
      _$_LoadFailure;

  FirestoreFailure get firestoreFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
