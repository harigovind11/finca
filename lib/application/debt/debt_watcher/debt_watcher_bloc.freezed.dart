// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debt_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DebtWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchDebtStarted,
    required TResult Function() watchCreditStarted,
    required TResult Function(
            Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)
        transactionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchDebtStarted,
    TResult? Function()? watchCreditStarted,
    TResult? Function(
            Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)?
        transactionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchDebtStarted,
    TResult Function()? watchCreditStarted,
    TResult Function(Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)?
        transactionReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchDebtStarted value) watchDebtStarted,
    required TResult Function(_WatchCreditStarted value) watchCreditStarted,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchDebtStarted value)? watchDebtStarted,
    TResult? Function(_WatchCreditStarted value)? watchCreditStarted,
    TResult? Function(_TransactionReceived value)? transactionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchDebtStarted value)? watchDebtStarted,
    TResult Function(_WatchCreditStarted value)? watchCreditStarted,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebtWatcherEventCopyWith<$Res> {
  factory $DebtWatcherEventCopyWith(
          DebtWatcherEvent value, $Res Function(DebtWatcherEvent) then) =
      _$DebtWatcherEventCopyWithImpl<$Res, DebtWatcherEvent>;
}

/// @nodoc
class _$DebtWatcherEventCopyWithImpl<$Res, $Val extends DebtWatcherEvent>
    implements $DebtWatcherEventCopyWith<$Res> {
  _$DebtWatcherEventCopyWithImpl(this._value, this._then);

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
    extends _$DebtWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
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
    return 'DebtWatcherEvent.watchAllStarted()';
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
    required TResult Function() watchDebtStarted,
    required TResult Function() watchCreditStarted,
    required TResult Function(
            Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)
        transactionReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchDebtStarted,
    TResult? Function()? watchCreditStarted,
    TResult? Function(
            Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)?
        transactionReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchDebtStarted,
    TResult Function()? watchCreditStarted,
    TResult Function(Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)?
        transactionReceived,
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
    required TResult Function(_WatchDebtStarted value) watchDebtStarted,
    required TResult Function(_WatchCreditStarted value) watchCreditStarted,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchDebtStarted value)? watchDebtStarted,
    TResult? Function(_WatchCreditStarted value)? watchCreditStarted,
    TResult? Function(_TransactionReceived value)? transactionReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchDebtStarted value)? watchDebtStarted,
    TResult Function(_WatchCreditStarted value)? watchCreditStarted,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements DebtWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$$_WatchDebtStartedCopyWith<$Res> {
  factory _$$_WatchDebtStartedCopyWith(
          _$_WatchDebtStarted value, $Res Function(_$_WatchDebtStarted) then) =
      __$$_WatchDebtStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchDebtStartedCopyWithImpl<$Res>
    extends _$DebtWatcherEventCopyWithImpl<$Res, _$_WatchDebtStarted>
    implements _$$_WatchDebtStartedCopyWith<$Res> {
  __$$_WatchDebtStartedCopyWithImpl(
      _$_WatchDebtStarted _value, $Res Function(_$_WatchDebtStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchDebtStarted implements _WatchDebtStarted {
  const _$_WatchDebtStarted();

  @override
  String toString() {
    return 'DebtWatcherEvent.watchDebtStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchDebtStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchDebtStarted,
    required TResult Function() watchCreditStarted,
    required TResult Function(
            Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)
        transactionReceived,
  }) {
    return watchDebtStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchDebtStarted,
    TResult? Function()? watchCreditStarted,
    TResult? Function(
            Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)?
        transactionReceived,
  }) {
    return watchDebtStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchDebtStarted,
    TResult Function()? watchCreditStarted,
    TResult Function(Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)?
        transactionReceived,
    required TResult orElse(),
  }) {
    if (watchDebtStarted != null) {
      return watchDebtStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchDebtStarted value) watchDebtStarted,
    required TResult Function(_WatchCreditStarted value) watchCreditStarted,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) {
    return watchDebtStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchDebtStarted value)? watchDebtStarted,
    TResult? Function(_WatchCreditStarted value)? watchCreditStarted,
    TResult? Function(_TransactionReceived value)? transactionReceived,
  }) {
    return watchDebtStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchDebtStarted value)? watchDebtStarted,
    TResult Function(_WatchCreditStarted value)? watchCreditStarted,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) {
    if (watchDebtStarted != null) {
      return watchDebtStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchDebtStarted implements DebtWatcherEvent {
  const factory _WatchDebtStarted() = _$_WatchDebtStarted;
}

/// @nodoc
abstract class _$$_WatchCreditStartedCopyWith<$Res> {
  factory _$$_WatchCreditStartedCopyWith(_$_WatchCreditStarted value,
          $Res Function(_$_WatchCreditStarted) then) =
      __$$_WatchCreditStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchCreditStartedCopyWithImpl<$Res>
    extends _$DebtWatcherEventCopyWithImpl<$Res, _$_WatchCreditStarted>
    implements _$$_WatchCreditStartedCopyWith<$Res> {
  __$$_WatchCreditStartedCopyWithImpl(
      _$_WatchCreditStarted _value, $Res Function(_$_WatchCreditStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchCreditStarted implements _WatchCreditStarted {
  const _$_WatchCreditStarted();

  @override
  String toString() {
    return 'DebtWatcherEvent.watchCreditStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchCreditStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchDebtStarted,
    required TResult Function() watchCreditStarted,
    required TResult Function(
            Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)
        transactionReceived,
  }) {
    return watchCreditStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchDebtStarted,
    TResult? Function()? watchCreditStarted,
    TResult? Function(
            Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)?
        transactionReceived,
  }) {
    return watchCreditStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchDebtStarted,
    TResult Function()? watchCreditStarted,
    TResult Function(Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)?
        transactionReceived,
    required TResult orElse(),
  }) {
    if (watchCreditStarted != null) {
      return watchCreditStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchDebtStarted value) watchDebtStarted,
    required TResult Function(_WatchCreditStarted value) watchCreditStarted,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) {
    return watchCreditStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchDebtStarted value)? watchDebtStarted,
    TResult? Function(_WatchCreditStarted value)? watchCreditStarted,
    TResult? Function(_TransactionReceived value)? transactionReceived,
  }) {
    return watchCreditStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchDebtStarted value)? watchDebtStarted,
    TResult Function(_WatchCreditStarted value)? watchCreditStarted,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) {
    if (watchCreditStarted != null) {
      return watchCreditStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchCreditStarted implements DebtWatcherEvent {
  const factory _WatchCreditStarted() = _$_WatchCreditStarted;
}

/// @nodoc
abstract class _$$_TransactionReceivedCopyWith<$Res> {
  factory _$$_TransactionReceivedCopyWith(_$_TransactionReceived value,
          $Res Function(_$_TransactionReceived) then) =
      __$$_TransactionReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<FirestoreFailure, List<DebtEntity>> failureOrDebts});
}

/// @nodoc
class __$$_TransactionReceivedCopyWithImpl<$Res>
    extends _$DebtWatcherEventCopyWithImpl<$Res, _$_TransactionReceived>
    implements _$$_TransactionReceivedCopyWith<$Res> {
  __$$_TransactionReceivedCopyWithImpl(_$_TransactionReceived _value,
      $Res Function(_$_TransactionReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrDebts = null,
  }) {
    return _then(_$_TransactionReceived(
      null == failureOrDebts
          ? _value.failureOrDebts
          : failureOrDebts // ignore: cast_nullable_to_non_nullable
              as Either<FirestoreFailure, List<DebtEntity>>,
    ));
  }
}

/// @nodoc

class _$_TransactionReceived implements _TransactionReceived {
  const _$_TransactionReceived(this.failureOrDebts);

  @override
  final Either<FirestoreFailure, List<DebtEntity>> failureOrDebts;

  @override
  String toString() {
    return 'DebtWatcherEvent.transactionReceived(failureOrDebts: $failureOrDebts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionReceived &&
            (identical(other.failureOrDebts, failureOrDebts) ||
                other.failureOrDebts == failureOrDebts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrDebts);

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
    required TResult Function() watchDebtStarted,
    required TResult Function() watchCreditStarted,
    required TResult Function(
            Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)
        transactionReceived,
  }) {
    return transactionReceived(failureOrDebts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchDebtStarted,
    TResult? Function()? watchCreditStarted,
    TResult? Function(
            Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)?
        transactionReceived,
  }) {
    return transactionReceived?.call(failureOrDebts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchDebtStarted,
    TResult Function()? watchCreditStarted,
    TResult Function(Either<FirestoreFailure, List<DebtEntity>> failureOrDebts)?
        transactionReceived,
    required TResult orElse(),
  }) {
    if (transactionReceived != null) {
      return transactionReceived(failureOrDebts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchDebtStarted value) watchDebtStarted,
    required TResult Function(_WatchCreditStarted value) watchCreditStarted,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) {
    return transactionReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchDebtStarted value)? watchDebtStarted,
    TResult? Function(_WatchCreditStarted value)? watchCreditStarted,
    TResult? Function(_TransactionReceived value)? transactionReceived,
  }) {
    return transactionReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchDebtStarted value)? watchDebtStarted,
    TResult Function(_WatchCreditStarted value)? watchCreditStarted,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) {
    if (transactionReceived != null) {
      return transactionReceived(this);
    }
    return orElse();
  }
}

abstract class _TransactionReceived implements DebtWatcherEvent {
  const factory _TransactionReceived(
          final Either<FirestoreFailure, List<DebtEntity>> failureOrDebts) =
      _$_TransactionReceived;

  Either<FirestoreFailure, List<DebtEntity>> get failureOrDebts;
  @JsonKey(ignore: true)
  _$$_TransactionReceivedCopyWith<_$_TransactionReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DebtWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)
        loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)?
        loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)?
        loadSucess,
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
abstract class $DebtWatcherStateCopyWith<$Res> {
  factory $DebtWatcherStateCopyWith(
          DebtWatcherState value, $Res Function(DebtWatcherState) then) =
      _$DebtWatcherStateCopyWithImpl<$Res, DebtWatcherState>;
}

/// @nodoc
class _$DebtWatcherStateCopyWithImpl<$Res, $Val extends DebtWatcherState>
    implements $DebtWatcherStateCopyWith<$Res> {
  _$DebtWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$DebtWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DebtWatcherState.initial()';
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
    required TResult Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)
        loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)?
        loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)?
        loadSucess,
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

abstract class _Initial implements DebtWatcherState {
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
    extends _$DebtWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'DebtWatcherState.loadInProgress()';
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
    required TResult Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)
        loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)?
        loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)?
        loadSucess,
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

abstract class _LoadInProgress implements DebtWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSucessCopyWith<$Res> {
  factory _$$_LoadSucessCopyWith(
          _$_LoadSucess value, $Res Function(_$_LoadSucess) then) =
      __$$_LoadSucessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DebtEntity> debts, double totalDebt, double totalCredit});
}

/// @nodoc
class __$$_LoadSucessCopyWithImpl<$Res>
    extends _$DebtWatcherStateCopyWithImpl<$Res, _$_LoadSucess>
    implements _$$_LoadSucessCopyWith<$Res> {
  __$$_LoadSucessCopyWithImpl(
      _$_LoadSucess _value, $Res Function(_$_LoadSucess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debts = null,
    Object? totalDebt = null,
    Object? totalCredit = null,
  }) {
    return _then(_$_LoadSucess(
      null == debts
          ? _value._debts
          : debts // ignore: cast_nullable_to_non_nullable
              as List<DebtEntity>,
      null == totalDebt
          ? _value.totalDebt
          : totalDebt // ignore: cast_nullable_to_non_nullable
              as double,
      null == totalCredit
          ? _value.totalCredit
          : totalCredit // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LoadSucess implements _LoadSucess {
  const _$_LoadSucess(
      final List<DebtEntity> debts, this.totalDebt, this.totalCredit)
      : _debts = debts;

  final List<DebtEntity> _debts;
  @override
  List<DebtEntity> get debts {
    if (_debts is EqualUnmodifiableListView) return _debts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_debts);
  }

  @override
  final double totalDebt;
  @override
  final double totalCredit;

  @override
  String toString() {
    return 'DebtWatcherState.loadSucess(debts: $debts, totalDebt: $totalDebt, totalCredit: $totalCredit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSucess &&
            const DeepCollectionEquality().equals(other._debts, _debts) &&
            (identical(other.totalDebt, totalDebt) ||
                other.totalDebt == totalDebt) &&
            (identical(other.totalCredit, totalCredit) ||
                other.totalCredit == totalCredit));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_debts), totalDebt, totalCredit);

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
    required TResult Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)
        loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) {
    return loadSucess(debts, totalDebt, totalCredit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)?
        loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) {
    return loadSucess?.call(debts, totalDebt, totalCredit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)?
        loadSucess,
    TResult Function(FirestoreFailure firestoreFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSucess != null) {
      return loadSucess(debts, totalDebt, totalCredit);
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

abstract class _LoadSucess implements DebtWatcherState {
  const factory _LoadSucess(final List<DebtEntity> debts,
      final double totalDebt, final double totalCredit) = _$_LoadSucess;

  List<DebtEntity> get debts;
  double get totalDebt;
  double get totalCredit;
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
    extends _$DebtWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
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
    return 'DebtWatcherState.loadFailure(firestoreFailure: $firestoreFailure)';
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
    required TResult Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)
        loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) {
    return loadFailure(firestoreFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)?
        loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) {
    return loadFailure?.call(firestoreFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<DebtEntity> debts, double totalDebt, double totalCredit)?
        loadSucess,
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

abstract class _LoadFailure implements DebtWatcherState {
  const factory _LoadFailure(final FirestoreFailure firestoreFailure) =
      _$_LoadFailure;

  FirestoreFailure get firestoreFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
