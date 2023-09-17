// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AccountEntity> initialOption) initialized,
    required TResult Function(String accountNameStr) accountNameChanged,
    required TResult Function(String accountBalanceStr) accountBalanceChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AccountEntity> initialOption)? initialized,
    TResult? Function(String accountNameStr)? accountNameChanged,
    TResult? Function(String accountBalanceStr)? accountBalanceChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AccountEntity> initialOption)? initialized,
    TResult Function(String accountNameStr)? accountNameChanged,
    TResult Function(String accountBalanceStr)? accountBalanceChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AccountNameChanged value) accountNameChanged,
    required TResult Function(_AccountBalanceChanged value)
        accountBalanceChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AccountNameChanged value)? accountNameChanged,
    TResult? Function(_AccountBalanceChanged value)? accountBalanceChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AccountNameChanged value)? accountNameChanged,
    TResult Function(_AccountBalanceChanged value)? accountBalanceChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountFormEventCopyWith<$Res> {
  factory $AccountFormEventCopyWith(
          AccountFormEvent value, $Res Function(AccountFormEvent) then) =
      _$AccountFormEventCopyWithImpl<$Res, AccountFormEvent>;
}

/// @nodoc
class _$AccountFormEventCopyWithImpl<$Res, $Val extends AccountFormEvent>
    implements $AccountFormEventCopyWith<$Res> {
  _$AccountFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<AccountEntity> initialOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$AccountFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialOption = null,
  }) {
    return _then(_$_Initialized(
      null == initialOption
          ? _value.initialOption
          : initialOption // ignore: cast_nullable_to_non_nullable
              as Option<AccountEntity>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialOption);

  @override
  final Option<AccountEntity> initialOption;

  @override
  String toString() {
    return 'AccountFormEvent.initialized(initialOption: $initialOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialOption, initialOption) ||
                other.initialOption == initialOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AccountEntity> initialOption) initialized,
    required TResult Function(String accountNameStr) accountNameChanged,
    required TResult Function(String accountBalanceStr) accountBalanceChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AccountEntity> initialOption)? initialized,
    TResult? Function(String accountNameStr)? accountNameChanged,
    TResult? Function(String accountBalanceStr)? accountBalanceChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AccountEntity> initialOption)? initialized,
    TResult Function(String accountNameStr)? accountNameChanged,
    TResult Function(String accountBalanceStr)? accountBalanceChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AccountNameChanged value) accountNameChanged,
    required TResult Function(_AccountBalanceChanged value)
        accountBalanceChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AccountNameChanged value)? accountNameChanged,
    TResult? Function(_AccountBalanceChanged value)? accountBalanceChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AccountNameChanged value)? accountNameChanged,
    TResult Function(_AccountBalanceChanged value)? accountBalanceChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements AccountFormEvent {
  const factory _Initialized(final Option<AccountEntity> initialOption) =
      _$_Initialized;

  Option<AccountEntity> get initialOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountNameChangedCopyWith<$Res> {
  factory _$$_AccountNameChangedCopyWith(_$_AccountNameChanged value,
          $Res Function(_$_AccountNameChanged) then) =
      __$$_AccountNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String accountNameStr});
}

/// @nodoc
class __$$_AccountNameChangedCopyWithImpl<$Res>
    extends _$AccountFormEventCopyWithImpl<$Res, _$_AccountNameChanged>
    implements _$$_AccountNameChangedCopyWith<$Res> {
  __$$_AccountNameChangedCopyWithImpl(
      _$_AccountNameChanged _value, $Res Function(_$_AccountNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNameStr = null,
  }) {
    return _then(_$_AccountNameChanged(
      null == accountNameStr
          ? _value.accountNameStr
          : accountNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountNameChanged implements _AccountNameChanged {
  const _$_AccountNameChanged(this.accountNameStr);

  @override
  final String accountNameStr;

  @override
  String toString() {
    return 'AccountFormEvent.accountNameChanged(accountNameStr: $accountNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountNameChanged &&
            (identical(other.accountNameStr, accountNameStr) ||
                other.accountNameStr == accountNameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountNameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountNameChangedCopyWith<_$_AccountNameChanged> get copyWith =>
      __$$_AccountNameChangedCopyWithImpl<_$_AccountNameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AccountEntity> initialOption) initialized,
    required TResult Function(String accountNameStr) accountNameChanged,
    required TResult Function(String accountBalanceStr) accountBalanceChanged,
    required TResult Function() saved,
  }) {
    return accountNameChanged(accountNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AccountEntity> initialOption)? initialized,
    TResult? Function(String accountNameStr)? accountNameChanged,
    TResult? Function(String accountBalanceStr)? accountBalanceChanged,
    TResult? Function()? saved,
  }) {
    return accountNameChanged?.call(accountNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AccountEntity> initialOption)? initialized,
    TResult Function(String accountNameStr)? accountNameChanged,
    TResult Function(String accountBalanceStr)? accountBalanceChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (accountNameChanged != null) {
      return accountNameChanged(accountNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AccountNameChanged value) accountNameChanged,
    required TResult Function(_AccountBalanceChanged value)
        accountBalanceChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return accountNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AccountNameChanged value)? accountNameChanged,
    TResult? Function(_AccountBalanceChanged value)? accountBalanceChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return accountNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AccountNameChanged value)? accountNameChanged,
    TResult Function(_AccountBalanceChanged value)? accountBalanceChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (accountNameChanged != null) {
      return accountNameChanged(this);
    }
    return orElse();
  }
}

abstract class _AccountNameChanged implements AccountFormEvent {
  const factory _AccountNameChanged(final String accountNameStr) =
      _$_AccountNameChanged;

  String get accountNameStr;
  @JsonKey(ignore: true)
  _$$_AccountNameChangedCopyWith<_$_AccountNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountBalanceChangedCopyWith<$Res> {
  factory _$$_AccountBalanceChangedCopyWith(_$_AccountBalanceChanged value,
          $Res Function(_$_AccountBalanceChanged) then) =
      __$$_AccountBalanceChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String accountBalanceStr});
}

/// @nodoc
class __$$_AccountBalanceChangedCopyWithImpl<$Res>
    extends _$AccountFormEventCopyWithImpl<$Res, _$_AccountBalanceChanged>
    implements _$$_AccountBalanceChangedCopyWith<$Res> {
  __$$_AccountBalanceChangedCopyWithImpl(_$_AccountBalanceChanged _value,
      $Res Function(_$_AccountBalanceChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountBalanceStr = null,
  }) {
    return _then(_$_AccountBalanceChanged(
      null == accountBalanceStr
          ? _value.accountBalanceStr
          : accountBalanceStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountBalanceChanged implements _AccountBalanceChanged {
  const _$_AccountBalanceChanged(this.accountBalanceStr);

  @override
  final String accountBalanceStr;

  @override
  String toString() {
    return 'AccountFormEvent.accountBalanceChanged(accountBalanceStr: $accountBalanceStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountBalanceChanged &&
            (identical(other.accountBalanceStr, accountBalanceStr) ||
                other.accountBalanceStr == accountBalanceStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountBalanceStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountBalanceChangedCopyWith<_$_AccountBalanceChanged> get copyWith =>
      __$$_AccountBalanceChangedCopyWithImpl<_$_AccountBalanceChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AccountEntity> initialOption) initialized,
    required TResult Function(String accountNameStr) accountNameChanged,
    required TResult Function(String accountBalanceStr) accountBalanceChanged,
    required TResult Function() saved,
  }) {
    return accountBalanceChanged(accountBalanceStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AccountEntity> initialOption)? initialized,
    TResult? Function(String accountNameStr)? accountNameChanged,
    TResult? Function(String accountBalanceStr)? accountBalanceChanged,
    TResult? Function()? saved,
  }) {
    return accountBalanceChanged?.call(accountBalanceStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AccountEntity> initialOption)? initialized,
    TResult Function(String accountNameStr)? accountNameChanged,
    TResult Function(String accountBalanceStr)? accountBalanceChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (accountBalanceChanged != null) {
      return accountBalanceChanged(accountBalanceStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AccountNameChanged value) accountNameChanged,
    required TResult Function(_AccountBalanceChanged value)
        accountBalanceChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return accountBalanceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AccountNameChanged value)? accountNameChanged,
    TResult? Function(_AccountBalanceChanged value)? accountBalanceChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return accountBalanceChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AccountNameChanged value)? accountNameChanged,
    TResult Function(_AccountBalanceChanged value)? accountBalanceChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (accountBalanceChanged != null) {
      return accountBalanceChanged(this);
    }
    return orElse();
  }
}

abstract class _AccountBalanceChanged implements AccountFormEvent {
  const factory _AccountBalanceChanged(final String accountBalanceStr) =
      _$_AccountBalanceChanged;

  String get accountBalanceStr;
  @JsonKey(ignore: true)
  _$$_AccountBalanceChangedCopyWith<_$_AccountBalanceChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$AccountFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'AccountFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AccountEntity> initialOption) initialized,
    required TResult Function(String accountNameStr) accountNameChanged,
    required TResult Function(String accountBalanceStr) accountBalanceChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AccountEntity> initialOption)? initialized,
    TResult? Function(String accountNameStr)? accountNameChanged,
    TResult? Function(String accountBalanceStr)? accountBalanceChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AccountEntity> initialOption)? initialized,
    TResult Function(String accountNameStr)? accountNameChanged,
    TResult Function(String accountBalanceStr)? accountBalanceChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AccountNameChanged value) accountNameChanged,
    required TResult Function(_AccountBalanceChanged value)
        accountBalanceChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AccountNameChanged value)? accountNameChanged,
    TResult? Function(_AccountBalanceChanged value)? accountBalanceChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AccountNameChanged value)? accountNameChanged,
    TResult Function(_AccountBalanceChanged value)? accountBalanceChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements AccountFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$AccountFormState {
  AccountEntity get accountEntity => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSucessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountFormStateCopyWith<AccountFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountFormStateCopyWith<$Res> {
  factory $AccountFormStateCopyWith(
          AccountFormState value, $Res Function(AccountFormState) then) =
      _$AccountFormStateCopyWithImpl<$Res, AccountFormState>;
  @useResult
  $Res call(
      {AccountEntity accountEntity,
      bool isEditing,
      bool isSaving,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption});

  $AccountEntityCopyWith<$Res> get accountEntity;
}

/// @nodoc
class _$AccountFormStateCopyWithImpl<$Res, $Val extends AccountFormState>
    implements $AccountFormStateCopyWith<$Res> {
  _$AccountFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountEntity = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_value.copyWith(
      accountEntity: null == accountEntity
          ? _value.accountEntity
          : accountEntity // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSucessOption: null == saveFailureOrSucessOption
          ? _value.saveFailureOrSucessOption
          : saveFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirestoreFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountEntityCopyWith<$Res> get accountEntity {
    return $AccountEntityCopyWith<$Res>(_value.accountEntity, (value) {
      return _then(_value.copyWith(accountEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccountFormStateCopyWith<$Res>
    implements $AccountFormStateCopyWith<$Res> {
  factory _$$_AccountFormStateCopyWith(
          _$_AccountFormState value, $Res Function(_$_AccountFormState) then) =
      __$$_AccountFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccountEntity accountEntity,
      bool isEditing,
      bool isSaving,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption});

  @override
  $AccountEntityCopyWith<$Res> get accountEntity;
}

/// @nodoc
class __$$_AccountFormStateCopyWithImpl<$Res>
    extends _$AccountFormStateCopyWithImpl<$Res, _$_AccountFormState>
    implements _$$_AccountFormStateCopyWith<$Res> {
  __$$_AccountFormStateCopyWithImpl(
      _$_AccountFormState _value, $Res Function(_$_AccountFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountEntity = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_$_AccountFormState(
      accountEntity: null == accountEntity
          ? _value.accountEntity
          : accountEntity // ignore: cast_nullable_to_non_nullable
              as AccountEntity,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSucessOption: null == saveFailureOrSucessOption
          ? _value.saveFailureOrSucessOption
          : saveFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirestoreFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AccountFormState implements _AccountFormState {
  const _$_AccountFormState(
      {required this.accountEntity,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSucessOption});

  @override
  final AccountEntity accountEntity;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption;

  @override
  String toString() {
    return 'AccountFormState(accountEntity: $accountEntity, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSucessOption: $saveFailureOrSucessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountFormState &&
            (identical(other.accountEntity, accountEntity) ||
                other.accountEntity == accountEntity) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSucessOption,
                    saveFailureOrSucessOption) ||
                other.saveFailureOrSucessOption == saveFailureOrSucessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountEntity, isEditing,
      isSaving, saveFailureOrSucessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountFormStateCopyWith<_$_AccountFormState> get copyWith =>
      __$$_AccountFormStateCopyWithImpl<_$_AccountFormState>(this, _$identity);
}

abstract class _AccountFormState implements AccountFormState {
  const factory _AccountFormState(
      {required final AccountEntity accountEntity,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<FirestoreFailure, Unit>>
          saveFailureOrSucessOption}) = _$_AccountFormState;

  @override
  AccountEntity get accountEntity;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSucessOption;
  @override
  @JsonKey(ignore: true)
  _$$_AccountFormStateCopyWith<_$_AccountFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
