// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<FirestoreFailure, List<AccountEntity>> failureOrAccounts)
        accountReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(
            Either<FirestoreFailure, List<AccountEntity>> failureOrAccounts)?
        accountReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<FirestoreFailure, List<AccountEntity>> failureOrAccounts)?
        accountReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_AccountReceived value) accountReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_AccountReceived value)? accountReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_AccountReceived value)? accountReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountWatcherEventCopyWith<$Res> {
  factory $AccountWatcherEventCopyWith(
          AccountWatcherEvent value, $Res Function(AccountWatcherEvent) then) =
      _$AccountWatcherEventCopyWithImpl<$Res, AccountWatcherEvent>;
}

/// @nodoc
class _$AccountWatcherEventCopyWithImpl<$Res, $Val extends AccountWatcherEvent>
    implements $AccountWatcherEventCopyWith<$Res> {
  _$AccountWatcherEventCopyWithImpl(this._value, this._then);

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
    extends _$AccountWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
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
    return 'AccountWatcherEvent.watchAllStarted()';
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
    required TResult Function(
            Either<FirestoreFailure, List<AccountEntity>> failureOrAccounts)
        accountReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(
            Either<FirestoreFailure, List<AccountEntity>> failureOrAccounts)?
        accountReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<FirestoreFailure, List<AccountEntity>> failureOrAccounts)?
        accountReceived,
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
    required TResult Function(_AccountReceived value) accountReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_AccountReceived value)? accountReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_AccountReceived value)? accountReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements AccountWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$$_AccountReceivedCopyWith<$Res> {
  factory _$$_AccountReceivedCopyWith(
          _$_AccountReceived value, $Res Function(_$_AccountReceived) then) =
      __$$_AccountReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<FirestoreFailure, List<AccountEntity>> failureOrAccounts});
}

/// @nodoc
class __$$_AccountReceivedCopyWithImpl<$Res>
    extends _$AccountWatcherEventCopyWithImpl<$Res, _$_AccountReceived>
    implements _$$_AccountReceivedCopyWith<$Res> {
  __$$_AccountReceivedCopyWithImpl(
      _$_AccountReceived _value, $Res Function(_$_AccountReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrAccounts = null,
  }) {
    return _then(_$_AccountReceived(
      null == failureOrAccounts
          ? _value.failureOrAccounts
          : failureOrAccounts // ignore: cast_nullable_to_non_nullable
              as Either<FirestoreFailure, List<AccountEntity>>,
    ));
  }
}

/// @nodoc

class _$_AccountReceived implements _AccountReceived {
  const _$_AccountReceived(this.failureOrAccounts);

  @override
  final Either<FirestoreFailure, List<AccountEntity>> failureOrAccounts;

  @override
  String toString() {
    return 'AccountWatcherEvent.accountReceived(failureOrAccounts: $failureOrAccounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountReceived &&
            (identical(other.failureOrAccounts, failureOrAccounts) ||
                other.failureOrAccounts == failureOrAccounts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrAccounts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountReceivedCopyWith<_$_AccountReceived> get copyWith =>
      __$$_AccountReceivedCopyWithImpl<_$_AccountReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<FirestoreFailure, List<AccountEntity>> failureOrAccounts)
        accountReceived,
  }) {
    return accountReceived(failureOrAccounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(
            Either<FirestoreFailure, List<AccountEntity>> failureOrAccounts)?
        accountReceived,
  }) {
    return accountReceived?.call(failureOrAccounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<FirestoreFailure, List<AccountEntity>> failureOrAccounts)?
        accountReceived,
    required TResult orElse(),
  }) {
    if (accountReceived != null) {
      return accountReceived(failureOrAccounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_AccountReceived value) accountReceived,
  }) {
    return accountReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_AccountReceived value)? accountReceived,
  }) {
    return accountReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_AccountReceived value)? accountReceived,
    required TResult orElse(),
  }) {
    if (accountReceived != null) {
      return accountReceived(this);
    }
    return orElse();
  }
}

abstract class _AccountReceived implements AccountWatcherEvent {
  const factory _AccountReceived(
      final Either<FirestoreFailure, List<AccountEntity>>
          failureOrAccounts) = _$_AccountReceived;

  Either<FirestoreFailure, List<AccountEntity>> get failureOrAccounts;
  @JsonKey(ignore: true)
  _$$_AccountReceivedCopyWith<_$_AccountReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<AccountEntity> accounts) loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<AccountEntity> accounts)? loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<AccountEntity> accounts)? loadSucess,
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
abstract class $AccountWatcherStateCopyWith<$Res> {
  factory $AccountWatcherStateCopyWith(
          AccountWatcherState value, $Res Function(AccountWatcherState) then) =
      _$AccountWatcherStateCopyWithImpl<$Res, AccountWatcherState>;
}

/// @nodoc
class _$AccountWatcherStateCopyWithImpl<$Res, $Val extends AccountWatcherState>
    implements $AccountWatcherStateCopyWith<$Res> {
  _$AccountWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$AccountWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AccountWatcherState.initial()';
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
    required TResult Function(List<AccountEntity> accounts) loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<AccountEntity> accounts)? loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<AccountEntity> accounts)? loadSucess,
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

abstract class _Initial implements AccountWatcherState {
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
    extends _$AccountWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'AccountWatcherState.loadInProgress()';
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
    required TResult Function(List<AccountEntity> accounts) loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<AccountEntity> accounts)? loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<AccountEntity> accounts)? loadSucess,
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

abstract class _LoadInProgress implements AccountWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSucessCopyWith<$Res> {
  factory _$$_LoadSucessCopyWith(
          _$_LoadSucess value, $Res Function(_$_LoadSucess) then) =
      __$$_LoadSucessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AccountEntity> accounts});
}

/// @nodoc
class __$$_LoadSucessCopyWithImpl<$Res>
    extends _$AccountWatcherStateCopyWithImpl<$Res, _$_LoadSucess>
    implements _$$_LoadSucessCopyWith<$Res> {
  __$$_LoadSucessCopyWithImpl(
      _$_LoadSucess _value, $Res Function(_$_LoadSucess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
  }) {
    return _then(_$_LoadSucess(
      null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountEntity>,
    ));
  }
}

/// @nodoc

class _$_LoadSucess implements _LoadSucess {
  const _$_LoadSucess(final List<AccountEntity> accounts)
      : _accounts = accounts;

  final List<AccountEntity> _accounts;
  @override
  List<AccountEntity> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'AccountWatcherState.loadSucess(accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSucess &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

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
    required TResult Function(List<AccountEntity> accounts) loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) {
    return loadSucess(accounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<AccountEntity> accounts)? loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) {
    return loadSucess?.call(accounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<AccountEntity> accounts)? loadSucess,
    TResult Function(FirestoreFailure firestoreFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSucess != null) {
      return loadSucess(accounts);
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

abstract class _LoadSucess implements AccountWatcherState {
  const factory _LoadSucess(final List<AccountEntity> accounts) = _$_LoadSucess;

  List<AccountEntity> get accounts;
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
    extends _$AccountWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
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
    return 'AccountWatcherState.loadFailure(firestoreFailure: $firestoreFailure)';
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
    required TResult Function(List<AccountEntity> accounts) loadSucess,
    required TResult Function(FirestoreFailure firestoreFailure) loadFailure,
  }) {
    return loadFailure(firestoreFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<AccountEntity> accounts)? loadSucess,
    TResult? Function(FirestoreFailure firestoreFailure)? loadFailure,
  }) {
    return loadFailure?.call(firestoreFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<AccountEntity> accounts)? loadSucess,
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

abstract class _LoadFailure implements AccountWatcherState {
  const factory _LoadFailure(final FirestoreFailure firestoreFailure) =
      _$_LoadFailure;

  FirestoreFailure get firestoreFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
