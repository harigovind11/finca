// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchIncomeTransactionStarted,
    required TResult Function() watchExpenseTransactionStarted,
    required TResult Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)
        transactionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchIncomeTransactionStarted,
    TResult? Function()? watchExpenseTransactionStarted,
    TResult? Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)?
        transactionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchIncomeTransactionStarted,
    TResult Function()? watchExpenseTransactionStarted,
    TResult Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)?
        transactionReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchIncomeTransactionStarted value)
        watchIncomeTransactionStarted,
    required TResult Function(_WatchExpenseTransactionStarted value)
        watchExpenseTransactionStarted,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchIncomeTransactionStarted value)?
        watchIncomeTransactionStarted,
    TResult? Function(_WatchExpenseTransactionStarted value)?
        watchExpenseTransactionStarted,
    TResult? Function(_TransactionReceived value)? transactionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchIncomeTransactionStarted value)?
        watchIncomeTransactionStarted,
    TResult Function(_WatchExpenseTransactionStarted value)?
        watchExpenseTransactionStarted,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionWatcherEventCopyWith<$Res> {
  factory $TransactionWatcherEventCopyWith(TransactionWatcherEvent value,
          $Res Function(TransactionWatcherEvent) then) =
      _$TransactionWatcherEventCopyWithImpl<$Res, TransactionWatcherEvent>;
}

/// @nodoc
class _$TransactionWatcherEventCopyWithImpl<$Res,
        $Val extends TransactionWatcherEvent>
    implements $TransactionWatcherEventCopyWith<$Res> {
  _$TransactionWatcherEventCopyWithImpl(this._value, this._then);

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
    extends _$TransactionWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
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
    return 'TransactionWatcherEvent.watchAllStarted()';
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
    required TResult Function() watchIncomeTransactionStarted,
    required TResult Function() watchExpenseTransactionStarted,
    required TResult Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)
        transactionReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchIncomeTransactionStarted,
    TResult? Function()? watchExpenseTransactionStarted,
    TResult? Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)?
        transactionReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchIncomeTransactionStarted,
    TResult Function()? watchExpenseTransactionStarted,
    TResult Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)?
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
    required TResult Function(_WatchIncomeTransactionStarted value)
        watchIncomeTransactionStarted,
    required TResult Function(_WatchExpenseTransactionStarted value)
        watchExpenseTransactionStarted,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchIncomeTransactionStarted value)?
        watchIncomeTransactionStarted,
    TResult? Function(_WatchExpenseTransactionStarted value)?
        watchExpenseTransactionStarted,
    TResult? Function(_TransactionReceived value)? transactionReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchIncomeTransactionStarted value)?
        watchIncomeTransactionStarted,
    TResult Function(_WatchExpenseTransactionStarted value)?
        watchExpenseTransactionStarted,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements TransactionWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$$_WatchIncomeTransactionStartedCopyWith<$Res> {
  factory _$$_WatchIncomeTransactionStartedCopyWith(
          _$_WatchIncomeTransactionStarted value,
          $Res Function(_$_WatchIncomeTransactionStarted) then) =
      __$$_WatchIncomeTransactionStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchIncomeTransactionStartedCopyWithImpl<$Res>
    extends _$TransactionWatcherEventCopyWithImpl<$Res,
        _$_WatchIncomeTransactionStarted>
    implements _$$_WatchIncomeTransactionStartedCopyWith<$Res> {
  __$$_WatchIncomeTransactionStartedCopyWithImpl(
      _$_WatchIncomeTransactionStarted _value,
      $Res Function(_$_WatchIncomeTransactionStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchIncomeTransactionStarted
    implements _WatchIncomeTransactionStarted {
  const _$_WatchIncomeTransactionStarted();

  @override
  String toString() {
    return 'TransactionWatcherEvent.watchIncomeTransactionStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchIncomeTransactionStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchIncomeTransactionStarted,
    required TResult Function() watchExpenseTransactionStarted,
    required TResult Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)
        transactionReceived,
  }) {
    return watchIncomeTransactionStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchIncomeTransactionStarted,
    TResult? Function()? watchExpenseTransactionStarted,
    TResult? Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)?
        transactionReceived,
  }) {
    return watchIncomeTransactionStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchIncomeTransactionStarted,
    TResult Function()? watchExpenseTransactionStarted,
    TResult Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)?
        transactionReceived,
    required TResult orElse(),
  }) {
    if (watchIncomeTransactionStarted != null) {
      return watchIncomeTransactionStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchIncomeTransactionStarted value)
        watchIncomeTransactionStarted,
    required TResult Function(_WatchExpenseTransactionStarted value)
        watchExpenseTransactionStarted,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) {
    return watchIncomeTransactionStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchIncomeTransactionStarted value)?
        watchIncomeTransactionStarted,
    TResult? Function(_WatchExpenseTransactionStarted value)?
        watchExpenseTransactionStarted,
    TResult? Function(_TransactionReceived value)? transactionReceived,
  }) {
    return watchIncomeTransactionStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchIncomeTransactionStarted value)?
        watchIncomeTransactionStarted,
    TResult Function(_WatchExpenseTransactionStarted value)?
        watchExpenseTransactionStarted,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) {
    if (watchIncomeTransactionStarted != null) {
      return watchIncomeTransactionStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchIncomeTransactionStarted
    implements TransactionWatcherEvent {
  const factory _WatchIncomeTransactionStarted() =
      _$_WatchIncomeTransactionStarted;
}

/// @nodoc
abstract class _$$_WatchExpenseTransactionStartedCopyWith<$Res> {
  factory _$$_WatchExpenseTransactionStartedCopyWith(
          _$_WatchExpenseTransactionStarted value,
          $Res Function(_$_WatchExpenseTransactionStarted) then) =
      __$$_WatchExpenseTransactionStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchExpenseTransactionStartedCopyWithImpl<$Res>
    extends _$TransactionWatcherEventCopyWithImpl<$Res,
        _$_WatchExpenseTransactionStarted>
    implements _$$_WatchExpenseTransactionStartedCopyWith<$Res> {
  __$$_WatchExpenseTransactionStartedCopyWithImpl(
      _$_WatchExpenseTransactionStarted _value,
      $Res Function(_$_WatchExpenseTransactionStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchExpenseTransactionStarted
    implements _WatchExpenseTransactionStarted {
  const _$_WatchExpenseTransactionStarted();

  @override
  String toString() {
    return 'TransactionWatcherEvent.watchExpenseTransactionStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchExpenseTransactionStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function() watchIncomeTransactionStarted,
    required TResult Function() watchExpenseTransactionStarted,
    required TResult Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)
        transactionReceived,
  }) {
    return watchExpenseTransactionStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchIncomeTransactionStarted,
    TResult? Function()? watchExpenseTransactionStarted,
    TResult? Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)?
        transactionReceived,
  }) {
    return watchExpenseTransactionStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchIncomeTransactionStarted,
    TResult Function()? watchExpenseTransactionStarted,
    TResult Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)?
        transactionReceived,
    required TResult orElse(),
  }) {
    if (watchExpenseTransactionStarted != null) {
      return watchExpenseTransactionStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchIncomeTransactionStarted value)
        watchIncomeTransactionStarted,
    required TResult Function(_WatchExpenseTransactionStarted value)
        watchExpenseTransactionStarted,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) {
    return watchExpenseTransactionStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchIncomeTransactionStarted value)?
        watchIncomeTransactionStarted,
    TResult? Function(_WatchExpenseTransactionStarted value)?
        watchExpenseTransactionStarted,
    TResult? Function(_TransactionReceived value)? transactionReceived,
  }) {
    return watchExpenseTransactionStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchIncomeTransactionStarted value)?
        watchIncomeTransactionStarted,
    TResult Function(_WatchExpenseTransactionStarted value)?
        watchExpenseTransactionStarted,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) {
    if (watchExpenseTransactionStarted != null) {
      return watchExpenseTransactionStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchExpenseTransactionStarted
    implements TransactionWatcherEvent {
  const factory _WatchExpenseTransactionStarted() =
      _$_WatchExpenseTransactionStarted;
}

/// @nodoc
abstract class _$$_TransactionReceivedCopyWith<$Res> {
  factory _$$_TransactionReceivedCopyWith(_$_TransactionReceived value,
          $Res Function(_$_TransactionReceived) then) =
      __$$_TransactionReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<TransactionFailure, List<TransactionEntity>>
          failureOrTransactions});
}

/// @nodoc
class __$$_TransactionReceivedCopyWithImpl<$Res>
    extends _$TransactionWatcherEventCopyWithImpl<$Res, _$_TransactionReceived>
    implements _$$_TransactionReceivedCopyWith<$Res> {
  __$$_TransactionReceivedCopyWithImpl(_$_TransactionReceived _value,
      $Res Function(_$_TransactionReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrTransactions = null,
  }) {
    return _then(_$_TransactionReceived(
      null == failureOrTransactions
          ? _value.failureOrTransactions
          : failureOrTransactions // ignore: cast_nullable_to_non_nullable
              as Either<TransactionFailure, List<TransactionEntity>>,
    ));
  }
}

/// @nodoc

class _$_TransactionReceived implements _TransactionReceived {
  const _$_TransactionReceived(this.failureOrTransactions);

  @override
  final Either<TransactionFailure, List<TransactionEntity>>
      failureOrTransactions;

  @override
  String toString() {
    return 'TransactionWatcherEvent.transactionReceived(failureOrTransactions: $failureOrTransactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionReceived &&
            (identical(other.failureOrTransactions, failureOrTransactions) ||
                other.failureOrTransactions == failureOrTransactions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrTransactions);

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
    required TResult Function() watchIncomeTransactionStarted,
    required TResult Function() watchExpenseTransactionStarted,
    required TResult Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)
        transactionReceived,
  }) {
    return transactionReceived(failureOrTransactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function()? watchIncomeTransactionStarted,
    TResult? Function()? watchExpenseTransactionStarted,
    TResult? Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)?
        transactionReceived,
  }) {
    return transactionReceived?.call(failureOrTransactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function()? watchIncomeTransactionStarted,
    TResult Function()? watchExpenseTransactionStarted,
    TResult Function(
            Either<TransactionFailure, List<TransactionEntity>>
                failureOrTransactions)?
        transactionReceived,
    required TResult orElse(),
  }) {
    if (transactionReceived != null) {
      return transactionReceived(failureOrTransactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchIncomeTransactionStarted value)
        watchIncomeTransactionStarted,
    required TResult Function(_WatchExpenseTransactionStarted value)
        watchExpenseTransactionStarted,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) {
    return transactionReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchIncomeTransactionStarted value)?
        watchIncomeTransactionStarted,
    TResult? Function(_WatchExpenseTransactionStarted value)?
        watchExpenseTransactionStarted,
    TResult? Function(_TransactionReceived value)? transactionReceived,
  }) {
    return transactionReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchIncomeTransactionStarted value)?
        watchIncomeTransactionStarted,
    TResult Function(_WatchExpenseTransactionStarted value)?
        watchExpenseTransactionStarted,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) {
    if (transactionReceived != null) {
      return transactionReceived(this);
    }
    return orElse();
  }
}

abstract class _TransactionReceived implements TransactionWatcherEvent {
  const factory _TransactionReceived(
      final Either<TransactionFailure, List<TransactionEntity>>
          failureOrTransactions) = _$_TransactionReceived;

  Either<TransactionFailure, List<TransactionEntity>> get failureOrTransactions;
  @JsonKey(ignore: true)
  _$$_TransactionReceivedCopyWith<_$_TransactionReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<TransactionEntity> transactions,
            double totalBalance, double totalIncome, double totalExpense)
        loadSucess,
    required TResult Function(TransactionFailure transactionFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<TransactionEntity> transactions, double totalBalance,
            double totalIncome, double totalExpense)?
        loadSucess,
    TResult? Function(TransactionFailure transactionFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TransactionEntity> transactions, double totalBalance,
            double totalIncome, double totalExpense)?
        loadSucess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
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
abstract class $TransactionWatcherStateCopyWith<$Res> {
  factory $TransactionWatcherStateCopyWith(TransactionWatcherState value,
          $Res Function(TransactionWatcherState) then) =
      _$TransactionWatcherStateCopyWithImpl<$Res, TransactionWatcherState>;
}

/// @nodoc
class _$TransactionWatcherStateCopyWithImpl<$Res,
        $Val extends TransactionWatcherState>
    implements $TransactionWatcherStateCopyWith<$Res> {
  _$TransactionWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$TransactionWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TransactionWatcherState.initial()';
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
    required TResult Function(List<TransactionEntity> transactions,
            double totalBalance, double totalIncome, double totalExpense)
        loadSucess,
    required TResult Function(TransactionFailure transactionFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<TransactionEntity> transactions, double totalBalance,
            double totalIncome, double totalExpense)?
        loadSucess,
    TResult? Function(TransactionFailure transactionFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TransactionEntity> transactions, double totalBalance,
            double totalIncome, double totalExpense)?
        loadSucess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
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

abstract class _Initial implements TransactionWatcherState {
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
    extends _$TransactionWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'TransactionWatcherState.loadInProgress()';
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
    required TResult Function(List<TransactionEntity> transactions,
            double totalBalance, double totalIncome, double totalExpense)
        loadSucess,
    required TResult Function(TransactionFailure transactionFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<TransactionEntity> transactions, double totalBalance,
            double totalIncome, double totalExpense)?
        loadSucess,
    TResult? Function(TransactionFailure transactionFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TransactionEntity> transactions, double totalBalance,
            double totalIncome, double totalExpense)?
        loadSucess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
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

abstract class _LoadInProgress implements TransactionWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSucessCopyWith<$Res> {
  factory _$$_LoadSucessCopyWith(
          _$_LoadSucess value, $Res Function(_$_LoadSucess) then) =
      __$$_LoadSucessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<TransactionEntity> transactions,
      double totalBalance,
      double totalIncome,
      double totalExpense});
}

/// @nodoc
class __$$_LoadSucessCopyWithImpl<$Res>
    extends _$TransactionWatcherStateCopyWithImpl<$Res, _$_LoadSucess>
    implements _$$_LoadSucessCopyWith<$Res> {
  __$$_LoadSucessCopyWithImpl(
      _$_LoadSucess _value, $Res Function(_$_LoadSucess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? totalBalance = null,
    Object? totalIncome = null,
    Object? totalExpense = null,
  }) {
    return _then(_$_LoadSucess(
      null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionEntity>,
      null == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as double,
      null == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as double,
      null == totalExpense
          ? _value.totalExpense
          : totalExpense // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LoadSucess implements _LoadSucess {
  const _$_LoadSucess(final List<TransactionEntity> transactions,
      this.totalBalance, this.totalIncome, this.totalExpense)
      : _transactions = transactions;

  final List<TransactionEntity> _transactions;
  @override
  List<TransactionEntity> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final double totalBalance;
  @override
  final double totalIncome;
  @override
  final double totalExpense;

  @override
  String toString() {
    return 'TransactionWatcherState.loadSucess(transactions: $transactions, totalBalance: $totalBalance, totalIncome: $totalIncome, totalExpense: $totalExpense)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSucess &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.totalBalance, totalBalance) ||
                other.totalBalance == totalBalance) &&
            (identical(other.totalIncome, totalIncome) ||
                other.totalIncome == totalIncome) &&
            (identical(other.totalExpense, totalExpense) ||
                other.totalExpense == totalExpense));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_transactions),
      totalBalance,
      totalIncome,
      totalExpense);

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
    required TResult Function(List<TransactionEntity> transactions,
            double totalBalance, double totalIncome, double totalExpense)
        loadSucess,
    required TResult Function(TransactionFailure transactionFailure)
        loadFailure,
  }) {
    return loadSucess(transactions, totalBalance, totalIncome, totalExpense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<TransactionEntity> transactions, double totalBalance,
            double totalIncome, double totalExpense)?
        loadSucess,
    TResult? Function(TransactionFailure transactionFailure)? loadFailure,
  }) {
    return loadSucess?.call(
        transactions, totalBalance, totalIncome, totalExpense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TransactionEntity> transactions, double totalBalance,
            double totalIncome, double totalExpense)?
        loadSucess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSucess != null) {
      return loadSucess(transactions, totalBalance, totalIncome, totalExpense);
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

abstract class _LoadSucess implements TransactionWatcherState {
  const factory _LoadSucess(
      final List<TransactionEntity> transactions,
      final double totalBalance,
      final double totalIncome,
      final double totalExpense) = _$_LoadSucess;

  List<TransactionEntity> get transactions;
  double get totalBalance;
  double get totalIncome;
  double get totalExpense;
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
  $Res call({TransactionFailure transactionFailure});

  $TransactionFailureCopyWith<$Res> get transactionFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$TransactionWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionFailure = null,
  }) {
    return _then(_$_LoadFailure(
      null == transactionFailure
          ? _value.transactionFailure
          : transactionFailure // ignore: cast_nullable_to_non_nullable
              as TransactionFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionFailureCopyWith<$Res> get transactionFailure {
    return $TransactionFailureCopyWith<$Res>(_value.transactionFailure,
        (value) {
      return _then(_value.copyWith(transactionFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.transactionFailure);

  @override
  final TransactionFailure transactionFailure;

  @override
  String toString() {
    return 'TransactionWatcherState.loadFailure(transactionFailure: $transactionFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.transactionFailure, transactionFailure) ||
                other.transactionFailure == transactionFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionFailure);

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
    required TResult Function(List<TransactionEntity> transactions,
            double totalBalance, double totalIncome, double totalExpense)
        loadSucess,
    required TResult Function(TransactionFailure transactionFailure)
        loadFailure,
  }) {
    return loadFailure(transactionFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<TransactionEntity> transactions, double totalBalance,
            double totalIncome, double totalExpense)?
        loadSucess,
    TResult? Function(TransactionFailure transactionFailure)? loadFailure,
  }) {
    return loadFailure?.call(transactionFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<TransactionEntity> transactions, double totalBalance,
            double totalIncome, double totalExpense)?
        loadSucess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(transactionFailure);
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

abstract class _LoadFailure implements TransactionWatcherState {
  const factory _LoadFailure(final TransactionFailure transactionFailure) =
      _$_LoadFailure;

  TransactionFailure get transactionFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
