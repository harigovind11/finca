// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TransactionEntity> initialOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(TransactionType transactionType) typeChanged,
    required TResult Function(String selectedAccount) accountSelected,
    required TResult Function(String selectedCategory) categorySelected,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(TransactionType transactionType)? typeChanged,
    TResult? Function(String selectedAccount)? accountSelected,
    TResult? Function(String selectedCategory)? categorySelected,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(TransactionType transactionType)? typeChanged,
    TResult Function(String selectedAccount)? accountSelected,
    TResult Function(String selectedCategory)? categorySelected,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_PurposeChanged value) purposeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_AccountSelected value) accountSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_PurposeChanged value)? purposeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_AccountSelected value)? accountSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_PurposeChanged value)? purposeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_AccountSelected value)? accountSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionFormEventCopyWith<$Res> {
  factory $TransactionFormEventCopyWith(TransactionFormEvent value,
          $Res Function(TransactionFormEvent) then) =
      _$TransactionFormEventCopyWithImpl<$Res, TransactionFormEvent>;
}

/// @nodoc
class _$TransactionFormEventCopyWithImpl<$Res,
        $Val extends TransactionFormEvent>
    implements $TransactionFormEventCopyWith<$Res> {
  _$TransactionFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<TransactionEntity> initialOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$_Initialized>
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
              as Option<TransactionEntity>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialOption);

  @override
  final Option<TransactionEntity> initialOption;

  @override
  String toString() {
    return 'TransactionFormEvent.initialized(initialOption: $initialOption)';
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
    required TResult Function(Option<TransactionEntity> initialOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(TransactionType transactionType) typeChanged,
    required TResult Function(String selectedAccount) accountSelected,
    required TResult Function(String selectedCategory) categorySelected,
    required TResult Function() saved,
  }) {
    return initialized(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(TransactionType transactionType)? typeChanged,
    TResult? Function(String selectedAccount)? accountSelected,
    TResult? Function(String selectedCategory)? categorySelected,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(TransactionType transactionType)? typeChanged,
    TResult Function(String selectedAccount)? accountSelected,
    TResult Function(String selectedCategory)? categorySelected,
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
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_PurposeChanged value) purposeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_AccountSelected value) accountSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_PurposeChanged value)? purposeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_AccountSelected value)? accountSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_PurposeChanged value)? purposeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_AccountSelected value)? accountSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TransactionFormEvent {
  const factory _Initialized(final Option<TransactionEntity> initialOption) =
      _$_Initialized;

  Option<TransactionEntity> get initialOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AmountChangedCopyWith<$Res> {
  factory _$$_AmountChangedCopyWith(
          _$_AmountChanged value, $Res Function(_$_AmountChanged) then) =
      __$$_AmountChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String amountStr});
}

/// @nodoc
class __$$_AmountChangedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$_AmountChanged>
    implements _$$_AmountChangedCopyWith<$Res> {
  __$$_AmountChangedCopyWithImpl(
      _$_AmountChanged _value, $Res Function(_$_AmountChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountStr = null,
  }) {
    return _then(_$_AmountChanged(
      null == amountStr
          ? _value.amountStr
          : amountStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AmountChanged implements _AmountChanged {
  const _$_AmountChanged(this.amountStr);

  @override
  final String amountStr;

  @override
  String toString() {
    return 'TransactionFormEvent.amountChanged(amountStr: $amountStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmountChanged &&
            (identical(other.amountStr, amountStr) ||
                other.amountStr == amountStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AmountChangedCopyWith<_$_AmountChanged> get copyWith =>
      __$$_AmountChangedCopyWithImpl<_$_AmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TransactionEntity> initialOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(TransactionType transactionType) typeChanged,
    required TResult Function(String selectedAccount) accountSelected,
    required TResult Function(String selectedCategory) categorySelected,
    required TResult Function() saved,
  }) {
    return amountChanged(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(TransactionType transactionType)? typeChanged,
    TResult? Function(String selectedAccount)? accountSelected,
    TResult? Function(String selectedCategory)? categorySelected,
    TResult? Function()? saved,
  }) {
    return amountChanged?.call(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(TransactionType transactionType)? typeChanged,
    TResult Function(String selectedAccount)? accountSelected,
    TResult Function(String selectedCategory)? categorySelected,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(amountStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_PurposeChanged value) purposeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_AccountSelected value) accountSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_Saved value) saved,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_PurposeChanged value)? purposeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_AccountSelected value)? accountSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_Saved value)? saved,
  }) {
    return amountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_PurposeChanged value)? purposeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_AccountSelected value)? accountSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class _AmountChanged implements TransactionFormEvent {
  const factory _AmountChanged(final String amountStr) = _$_AmountChanged;

  String get amountStr;
  @JsonKey(ignore: true)
  _$$_AmountChangedCopyWith<_$_AmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PurposeChangedCopyWith<$Res> {
  factory _$$_PurposeChangedCopyWith(
          _$_PurposeChanged value, $Res Function(_$_PurposeChanged) then) =
      __$$_PurposeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String purposeStr});
}

/// @nodoc
class __$$_PurposeChangedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$_PurposeChanged>
    implements _$$_PurposeChangedCopyWith<$Res> {
  __$$_PurposeChangedCopyWithImpl(
      _$_PurposeChanged _value, $Res Function(_$_PurposeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purposeStr = null,
  }) {
    return _then(_$_PurposeChanged(
      null == purposeStr
          ? _value.purposeStr
          : purposeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PurposeChanged implements _PurposeChanged {
  const _$_PurposeChanged(this.purposeStr);

  @override
  final String purposeStr;

  @override
  String toString() {
    return 'TransactionFormEvent.purposeChanged(purposeStr: $purposeStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurposeChanged &&
            (identical(other.purposeStr, purposeStr) ||
                other.purposeStr == purposeStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purposeStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurposeChangedCopyWith<_$_PurposeChanged> get copyWith =>
      __$$_PurposeChangedCopyWithImpl<_$_PurposeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TransactionEntity> initialOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(TransactionType transactionType) typeChanged,
    required TResult Function(String selectedAccount) accountSelected,
    required TResult Function(String selectedCategory) categorySelected,
    required TResult Function() saved,
  }) {
    return purposeChanged(purposeStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(TransactionType transactionType)? typeChanged,
    TResult? Function(String selectedAccount)? accountSelected,
    TResult? Function(String selectedCategory)? categorySelected,
    TResult? Function()? saved,
  }) {
    return purposeChanged?.call(purposeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(TransactionType transactionType)? typeChanged,
    TResult Function(String selectedAccount)? accountSelected,
    TResult Function(String selectedCategory)? categorySelected,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (purposeChanged != null) {
      return purposeChanged(purposeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_PurposeChanged value) purposeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_AccountSelected value) accountSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_Saved value) saved,
  }) {
    return purposeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_PurposeChanged value)? purposeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_AccountSelected value)? accountSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_Saved value)? saved,
  }) {
    return purposeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_PurposeChanged value)? purposeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_AccountSelected value)? accountSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (purposeChanged != null) {
      return purposeChanged(this);
    }
    return orElse();
  }
}

abstract class _PurposeChanged implements TransactionFormEvent {
  const factory _PurposeChanged(final String purposeStr) = _$_PurposeChanged;

  String get purposeStr;
  @JsonKey(ignore: true)
  _$$_PurposeChangedCopyWith<_$_PurposeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DateChangedCopyWith<$Res> {
  factory _$$_DateChangedCopyWith(
          _$_DateChanged value, $Res Function(_$_DateChanged) then) =
      __$$_DateChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$_DateChangedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$_DateChanged>
    implements _$$_DateChangedCopyWith<$Res> {
  __$$_DateChangedCopyWithImpl(
      _$_DateChanged _value, $Res Function(_$_DateChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$_DateChanged(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateChanged implements _DateChanged {
  const _$_DateChanged(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'TransactionFormEvent.dateChanged(dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateChanged &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateChangedCopyWith<_$_DateChanged> get copyWith =>
      __$$_DateChangedCopyWithImpl<_$_DateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TransactionEntity> initialOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(TransactionType transactionType) typeChanged,
    required TResult Function(String selectedAccount) accountSelected,
    required TResult Function(String selectedCategory) categorySelected,
    required TResult Function() saved,
  }) {
    return dateChanged(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(TransactionType transactionType)? typeChanged,
    TResult? Function(String selectedAccount)? accountSelected,
    TResult? Function(String selectedCategory)? categorySelected,
    TResult? Function()? saved,
  }) {
    return dateChanged?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(TransactionType transactionType)? typeChanged,
    TResult Function(String selectedAccount)? accountSelected,
    TResult Function(String selectedCategory)? categorySelected,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_PurposeChanged value) purposeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_AccountSelected value) accountSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_Saved value) saved,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_PurposeChanged value)? purposeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_AccountSelected value)? accountSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_Saved value)? saved,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_PurposeChanged value)? purposeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_AccountSelected value)? accountSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements TransactionFormEvent {
  const factory _DateChanged(final DateTime dateTime) = _$_DateChanged;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$_DateChangedCopyWith<_$_DateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TypeChangedCopyWith<$Res> {
  factory _$$_TypeChangedCopyWith(
          _$_TypeChanged value, $Res Function(_$_TypeChanged) then) =
      __$$_TypeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionType transactionType});
}

/// @nodoc
class __$$_TypeChangedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$_TypeChanged>
    implements _$$_TypeChangedCopyWith<$Res> {
  __$$_TypeChangedCopyWithImpl(
      _$_TypeChanged _value, $Res Function(_$_TypeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionType = null,
  }) {
    return _then(_$_TypeChanged(
      null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ));
  }
}

/// @nodoc

class _$_TypeChanged implements _TypeChanged {
  const _$_TypeChanged(this.transactionType);

  @override
  final TransactionType transactionType;

  @override
  String toString() {
    return 'TransactionFormEvent.typeChanged(transactionType: $transactionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeChanged &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeChangedCopyWith<_$_TypeChanged> get copyWith =>
      __$$_TypeChangedCopyWithImpl<_$_TypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TransactionEntity> initialOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(TransactionType transactionType) typeChanged,
    required TResult Function(String selectedAccount) accountSelected,
    required TResult Function(String selectedCategory) categorySelected,
    required TResult Function() saved,
  }) {
    return typeChanged(transactionType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(TransactionType transactionType)? typeChanged,
    TResult? Function(String selectedAccount)? accountSelected,
    TResult? Function(String selectedCategory)? categorySelected,
    TResult? Function()? saved,
  }) {
    return typeChanged?.call(transactionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(TransactionType transactionType)? typeChanged,
    TResult Function(String selectedAccount)? accountSelected,
    TResult Function(String selectedCategory)? categorySelected,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(transactionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_PurposeChanged value) purposeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_AccountSelected value) accountSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_Saved value) saved,
  }) {
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_PurposeChanged value)? purposeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_AccountSelected value)? accountSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_Saved value)? saved,
  }) {
    return typeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_PurposeChanged value)? purposeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_AccountSelected value)? accountSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class _TypeChanged implements TransactionFormEvent {
  const factory _TypeChanged(final TransactionType transactionType) =
      _$_TypeChanged;

  TransactionType get transactionType;
  @JsonKey(ignore: true)
  _$$_TypeChangedCopyWith<_$_TypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountSelectedCopyWith<$Res> {
  factory _$$_AccountSelectedCopyWith(
          _$_AccountSelected value, $Res Function(_$_AccountSelected) then) =
      __$$_AccountSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedAccount});
}

/// @nodoc
class __$$_AccountSelectedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$_AccountSelected>
    implements _$$_AccountSelectedCopyWith<$Res> {
  __$$_AccountSelectedCopyWithImpl(
      _$_AccountSelected _value, $Res Function(_$_AccountSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedAccount = null,
  }) {
    return _then(_$_AccountSelected(
      null == selectedAccount
          ? _value.selectedAccount
          : selectedAccount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountSelected implements _AccountSelected {
  const _$_AccountSelected(this.selectedAccount);

  @override
  final String selectedAccount;

  @override
  String toString() {
    return 'TransactionFormEvent.accountSelected(selectedAccount: $selectedAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountSelected &&
            (identical(other.selectedAccount, selectedAccount) ||
                other.selectedAccount == selectedAccount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountSelectedCopyWith<_$_AccountSelected> get copyWith =>
      __$$_AccountSelectedCopyWithImpl<_$_AccountSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TransactionEntity> initialOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(TransactionType transactionType) typeChanged,
    required TResult Function(String selectedAccount) accountSelected,
    required TResult Function(String selectedCategory) categorySelected,
    required TResult Function() saved,
  }) {
    return accountSelected(selectedAccount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(TransactionType transactionType)? typeChanged,
    TResult? Function(String selectedAccount)? accountSelected,
    TResult? Function(String selectedCategory)? categorySelected,
    TResult? Function()? saved,
  }) {
    return accountSelected?.call(selectedAccount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(TransactionType transactionType)? typeChanged,
    TResult Function(String selectedAccount)? accountSelected,
    TResult Function(String selectedCategory)? categorySelected,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (accountSelected != null) {
      return accountSelected(selectedAccount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_PurposeChanged value) purposeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_AccountSelected value) accountSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_Saved value) saved,
  }) {
    return accountSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_PurposeChanged value)? purposeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_AccountSelected value)? accountSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_Saved value)? saved,
  }) {
    return accountSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_PurposeChanged value)? purposeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_AccountSelected value)? accountSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (accountSelected != null) {
      return accountSelected(this);
    }
    return orElse();
  }
}

abstract class _AccountSelected implements TransactionFormEvent {
  const factory _AccountSelected(final String selectedAccount) =
      _$_AccountSelected;

  String get selectedAccount;
  @JsonKey(ignore: true)
  _$$_AccountSelectedCopyWith<_$_AccountSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CategorySelectedCopyWith<$Res> {
  factory _$$_CategorySelectedCopyWith(
          _$_CategorySelected value, $Res Function(_$_CategorySelected) then) =
      __$$_CategorySelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedCategory});
}

/// @nodoc
class __$$_CategorySelectedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$_CategorySelected>
    implements _$$_CategorySelectedCopyWith<$Res> {
  __$$_CategorySelectedCopyWithImpl(
      _$_CategorySelected _value, $Res Function(_$_CategorySelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategory = null,
  }) {
    return _then(_$_CategorySelected(
      null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategorySelected implements _CategorySelected {
  const _$_CategorySelected(this.selectedCategory);

  @override
  final String selectedCategory;

  @override
  String toString() {
    return 'TransactionFormEvent.categorySelected(selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategorySelected &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategorySelectedCopyWith<_$_CategorySelected> get copyWith =>
      __$$_CategorySelectedCopyWithImpl<_$_CategorySelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TransactionEntity> initialOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(TransactionType transactionType) typeChanged,
    required TResult Function(String selectedAccount) accountSelected,
    required TResult Function(String selectedCategory) categorySelected,
    required TResult Function() saved,
  }) {
    return categorySelected(selectedCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(TransactionType transactionType)? typeChanged,
    TResult? Function(String selectedAccount)? accountSelected,
    TResult? Function(String selectedCategory)? categorySelected,
    TResult? Function()? saved,
  }) {
    return categorySelected?.call(selectedCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(TransactionType transactionType)? typeChanged,
    TResult Function(String selectedAccount)? accountSelected,
    TResult Function(String selectedCategory)? categorySelected,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(selectedCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_PurposeChanged value) purposeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_AccountSelected value) accountSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_Saved value) saved,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_PurposeChanged value)? purposeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_AccountSelected value)? accountSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_Saved value)? saved,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_PurposeChanged value)? purposeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_AccountSelected value)? accountSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class _CategorySelected implements TransactionFormEvent {
  const factory _CategorySelected(final String selectedCategory) =
      _$_CategorySelected;

  String get selectedCategory;
  @JsonKey(ignore: true)
  _$$_CategorySelectedCopyWith<_$_CategorySelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'TransactionFormEvent.saved()';
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
    required TResult Function(Option<TransactionEntity> initialOption)
        initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(TransactionType transactionType) typeChanged,
    required TResult Function(String selectedAccount) accountSelected,
    required TResult Function(String selectedCategory) categorySelected,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(TransactionType transactionType)? typeChanged,
    TResult? Function(String selectedAccount)? accountSelected,
    TResult? Function(String selectedCategory)? categorySelected,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(TransactionType transactionType)? typeChanged,
    TResult Function(String selectedAccount)? accountSelected,
    TResult Function(String selectedCategory)? categorySelected,
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
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_PurposeChanged value) purposeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_AccountSelected value) accountSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_PurposeChanged value)? purposeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_AccountSelected value)? accountSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_PurposeChanged value)? purposeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_AccountSelected value)? accountSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements TransactionFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$TransactionFormState {
  TransactionEntity get transactionEntity => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSucessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionFormStateCopyWith<TransactionFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionFormStateCopyWith<$Res> {
  factory $TransactionFormStateCopyWith(TransactionFormState value,
          $Res Function(TransactionFormState) then) =
      _$TransactionFormStateCopyWithImpl<$Res, TransactionFormState>;
  @useResult
  $Res call(
      {TransactionEntity transactionEntity,
      bool isEditing,
      bool isSaving,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption});

  $TransactionEntityCopyWith<$Res> get transactionEntity;
}

/// @nodoc
class _$TransactionFormStateCopyWithImpl<$Res,
        $Val extends TransactionFormState>
    implements $TransactionFormStateCopyWith<$Res> {
  _$TransactionFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionEntity = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_value.copyWith(
      transactionEntity: null == transactionEntity
          ? _value.transactionEntity
          : transactionEntity // ignore: cast_nullable_to_non_nullable
              as TransactionEntity,
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
  $TransactionEntityCopyWith<$Res> get transactionEntity {
    return $TransactionEntityCopyWith<$Res>(_value.transactionEntity, (value) {
      return _then(_value.copyWith(transactionEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionFormStateCopyWith<$Res>
    implements $TransactionFormStateCopyWith<$Res> {
  factory _$$_TransactionFormStateCopyWith(_$_TransactionFormState value,
          $Res Function(_$_TransactionFormState) then) =
      __$$_TransactionFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TransactionEntity transactionEntity,
      bool isEditing,
      bool isSaving,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption});

  @override
  $TransactionEntityCopyWith<$Res> get transactionEntity;
}

/// @nodoc
class __$$_TransactionFormStateCopyWithImpl<$Res>
    extends _$TransactionFormStateCopyWithImpl<$Res, _$_TransactionFormState>
    implements _$$_TransactionFormStateCopyWith<$Res> {
  __$$_TransactionFormStateCopyWithImpl(_$_TransactionFormState _value,
      $Res Function(_$_TransactionFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionEntity = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_$_TransactionFormState(
      transactionEntity: null == transactionEntity
          ? _value.transactionEntity
          : transactionEntity // ignore: cast_nullable_to_non_nullable
              as TransactionEntity,
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

class _$_TransactionFormState implements _TransactionFormState {
  const _$_TransactionFormState(
      {required this.transactionEntity,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSucessOption});

  @override
  final TransactionEntity transactionEntity;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption;

  @override
  String toString() {
    return 'TransactionFormState(transactionEntity: $transactionEntity, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSucessOption: $saveFailureOrSucessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionFormState &&
            (identical(other.transactionEntity, transactionEntity) ||
                other.transactionEntity == transactionEntity) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSucessOption,
                    saveFailureOrSucessOption) ||
                other.saveFailureOrSucessOption == saveFailureOrSucessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionEntity, isEditing,
      isSaving, saveFailureOrSucessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionFormStateCopyWith<_$_TransactionFormState> get copyWith =>
      __$$_TransactionFormStateCopyWithImpl<_$_TransactionFormState>(
          this, _$identity);
}

abstract class _TransactionFormState implements TransactionFormState {
  const factory _TransactionFormState(
      {required final TransactionEntity transactionEntity,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<FirestoreFailure, Unit>>
          saveFailureOrSucessOption}) = _$_TransactionFormState;

  @override
  TransactionEntity get transactionEntity;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSucessOption;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionFormStateCopyWith<_$_TransactionFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
