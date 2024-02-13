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
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(PurposeChanged value) purposeChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(AccountSelected value) accountSelected,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(PurposeChanged value)? purposeChanged,
    TResult? Function(DateChanged value)? dateChanged,
    TResult? Function(TypeChanged value)? typeChanged,
    TResult? Function(AccountSelected value)? accountSelected,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(PurposeChanged value)? purposeChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(AccountSelected value)? accountSelected,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(Saved value)? saved,
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
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<TransactionEntity> initialOption});
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$Initialized>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialOption = null,
  }) {
    return _then(_$Initialized(
      null == initialOption
          ? _value.initialOption
          : initialOption // ignore: cast_nullable_to_non_nullable
              as Option<TransactionEntity>,
    ));
  }
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized(this.initialOption);

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
            other is _$Initialized &&
            (identical(other.initialOption, initialOption) ||
                other.initialOption == initialOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      __$$InitializedCopyWithImpl<_$Initialized>(this, _$identity);

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
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(PurposeChanged value) purposeChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(AccountSelected value) accountSelected,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(PurposeChanged value)? purposeChanged,
    TResult? Function(DateChanged value)? dateChanged,
    TResult? Function(TypeChanged value)? typeChanged,
    TResult? Function(AccountSelected value)? accountSelected,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(PurposeChanged value)? purposeChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(AccountSelected value)? accountSelected,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements TransactionFormEvent {
  const factory Initialized(final Option<TransactionEntity> initialOption) =
      _$Initialized;

  Option<TransactionEntity> get initialOption;
  @JsonKey(ignore: true)
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AmountChangedCopyWith<$Res> {
  factory _$$AmountChangedCopyWith(
          _$AmountChanged value, $Res Function(_$AmountChanged) then) =
      __$$AmountChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String amountStr});
}

/// @nodoc
class __$$AmountChangedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$AmountChanged>
    implements _$$AmountChangedCopyWith<$Res> {
  __$$AmountChangedCopyWithImpl(
      _$AmountChanged _value, $Res Function(_$AmountChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountStr = null,
  }) {
    return _then(_$AmountChanged(
      null == amountStr
          ? _value.amountStr
          : amountStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AmountChanged implements AmountChanged {
  const _$AmountChanged(this.amountStr);

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
            other is _$AmountChanged &&
            (identical(other.amountStr, amountStr) ||
                other.amountStr == amountStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountChangedCopyWith<_$AmountChanged> get copyWith =>
      __$$AmountChangedCopyWithImpl<_$AmountChanged>(this, _$identity);

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
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(PurposeChanged value) purposeChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(AccountSelected value) accountSelected,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(Saved value) saved,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(PurposeChanged value)? purposeChanged,
    TResult? Function(DateChanged value)? dateChanged,
    TResult? Function(TypeChanged value)? typeChanged,
    TResult? Function(AccountSelected value)? accountSelected,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(Saved value)? saved,
  }) {
    return amountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(PurposeChanged value)? purposeChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(AccountSelected value)? accountSelected,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class AmountChanged implements TransactionFormEvent {
  const factory AmountChanged(final String amountStr) = _$AmountChanged;

  String get amountStr;
  @JsonKey(ignore: true)
  _$$AmountChangedCopyWith<_$AmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurposeChangedCopyWith<$Res> {
  factory _$$PurposeChangedCopyWith(
          _$PurposeChanged value, $Res Function(_$PurposeChanged) then) =
      __$$PurposeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String purposeStr});
}

/// @nodoc
class __$$PurposeChangedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$PurposeChanged>
    implements _$$PurposeChangedCopyWith<$Res> {
  __$$PurposeChangedCopyWithImpl(
      _$PurposeChanged _value, $Res Function(_$PurposeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purposeStr = null,
  }) {
    return _then(_$PurposeChanged(
      null == purposeStr
          ? _value.purposeStr
          : purposeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PurposeChanged implements PurposeChanged {
  const _$PurposeChanged(this.purposeStr);

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
            other is _$PurposeChanged &&
            (identical(other.purposeStr, purposeStr) ||
                other.purposeStr == purposeStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purposeStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurposeChangedCopyWith<_$PurposeChanged> get copyWith =>
      __$$PurposeChangedCopyWithImpl<_$PurposeChanged>(this, _$identity);

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
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(PurposeChanged value) purposeChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(AccountSelected value) accountSelected,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(Saved value) saved,
  }) {
    return purposeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(PurposeChanged value)? purposeChanged,
    TResult? Function(DateChanged value)? dateChanged,
    TResult? Function(TypeChanged value)? typeChanged,
    TResult? Function(AccountSelected value)? accountSelected,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(Saved value)? saved,
  }) {
    return purposeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(PurposeChanged value)? purposeChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(AccountSelected value)? accountSelected,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (purposeChanged != null) {
      return purposeChanged(this);
    }
    return orElse();
  }
}

abstract class PurposeChanged implements TransactionFormEvent {
  const factory PurposeChanged(final String purposeStr) = _$PurposeChanged;

  String get purposeStr;
  @JsonKey(ignore: true)
  _$$PurposeChangedCopyWith<_$PurposeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateChangedCopyWith<$Res> {
  factory _$$DateChangedCopyWith(
          _$DateChanged value, $Res Function(_$DateChanged) then) =
      __$$DateChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$DateChangedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$DateChanged>
    implements _$$DateChangedCopyWith<$Res> {
  __$$DateChangedCopyWithImpl(
      _$DateChanged _value, $Res Function(_$DateChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$DateChanged(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateChanged implements DateChanged {
  const _$DateChanged(this.dateTime);

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
            other is _$DateChanged &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateChangedCopyWith<_$DateChanged> get copyWith =>
      __$$DateChangedCopyWithImpl<_$DateChanged>(this, _$identity);

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
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(PurposeChanged value) purposeChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(AccountSelected value) accountSelected,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(Saved value) saved,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(PurposeChanged value)? purposeChanged,
    TResult? Function(DateChanged value)? dateChanged,
    TResult? Function(TypeChanged value)? typeChanged,
    TResult? Function(AccountSelected value)? accountSelected,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(Saved value)? saved,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(PurposeChanged value)? purposeChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(AccountSelected value)? accountSelected,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class DateChanged implements TransactionFormEvent {
  const factory DateChanged(final DateTime dateTime) = _$DateChanged;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$DateChangedCopyWith<_$DateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypeChangedCopyWith<$Res> {
  factory _$$TypeChangedCopyWith(
          _$TypeChanged value, $Res Function(_$TypeChanged) then) =
      __$$TypeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionType transactionType});
}

/// @nodoc
class __$$TypeChangedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$TypeChanged>
    implements _$$TypeChangedCopyWith<$Res> {
  __$$TypeChangedCopyWithImpl(
      _$TypeChanged _value, $Res Function(_$TypeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionType = null,
  }) {
    return _then(_$TypeChanged(
      null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ));
  }
}

/// @nodoc

class _$TypeChanged implements TypeChanged {
  const _$TypeChanged(this.transactionType);

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
            other is _$TypeChanged &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeChangedCopyWith<_$TypeChanged> get copyWith =>
      __$$TypeChangedCopyWithImpl<_$TypeChanged>(this, _$identity);

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
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(PurposeChanged value) purposeChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(AccountSelected value) accountSelected,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(Saved value) saved,
  }) {
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(PurposeChanged value)? purposeChanged,
    TResult? Function(DateChanged value)? dateChanged,
    TResult? Function(TypeChanged value)? typeChanged,
    TResult? Function(AccountSelected value)? accountSelected,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(Saved value)? saved,
  }) {
    return typeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(PurposeChanged value)? purposeChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(AccountSelected value)? accountSelected,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class TypeChanged implements TransactionFormEvent {
  const factory TypeChanged(final TransactionType transactionType) =
      _$TypeChanged;

  TransactionType get transactionType;
  @JsonKey(ignore: true)
  _$$TypeChangedCopyWith<_$TypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountSelectedCopyWith<$Res> {
  factory _$$AccountSelectedCopyWith(
          _$AccountSelected value, $Res Function(_$AccountSelected) then) =
      __$$AccountSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedAccount});
}

/// @nodoc
class __$$AccountSelectedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$AccountSelected>
    implements _$$AccountSelectedCopyWith<$Res> {
  __$$AccountSelectedCopyWithImpl(
      _$AccountSelected _value, $Res Function(_$AccountSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedAccount = null,
  }) {
    return _then(_$AccountSelected(
      null == selectedAccount
          ? _value.selectedAccount
          : selectedAccount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AccountSelected implements AccountSelected {
  const _$AccountSelected(this.selectedAccount);

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
            other is _$AccountSelected &&
            (identical(other.selectedAccount, selectedAccount) ||
                other.selectedAccount == selectedAccount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSelectedCopyWith<_$AccountSelected> get copyWith =>
      __$$AccountSelectedCopyWithImpl<_$AccountSelected>(this, _$identity);

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
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(PurposeChanged value) purposeChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(AccountSelected value) accountSelected,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(Saved value) saved,
  }) {
    return accountSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(PurposeChanged value)? purposeChanged,
    TResult? Function(DateChanged value)? dateChanged,
    TResult? Function(TypeChanged value)? typeChanged,
    TResult? Function(AccountSelected value)? accountSelected,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(Saved value)? saved,
  }) {
    return accountSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(PurposeChanged value)? purposeChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(AccountSelected value)? accountSelected,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (accountSelected != null) {
      return accountSelected(this);
    }
    return orElse();
  }
}

abstract class AccountSelected implements TransactionFormEvent {
  const factory AccountSelected(final String selectedAccount) =
      _$AccountSelected;

  String get selectedAccount;
  @JsonKey(ignore: true)
  _$$AccountSelectedCopyWith<_$AccountSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategorySelectedCopyWith<$Res> {
  factory _$$CategorySelectedCopyWith(
          _$CategorySelected value, $Res Function(_$CategorySelected) then) =
      __$$CategorySelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedCategory});
}

/// @nodoc
class __$$CategorySelectedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$CategorySelected>
    implements _$$CategorySelectedCopyWith<$Res> {
  __$$CategorySelectedCopyWithImpl(
      _$CategorySelected _value, $Res Function(_$CategorySelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategory = null,
  }) {
    return _then(_$CategorySelected(
      null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategorySelected implements CategorySelected {
  const _$CategorySelected(this.selectedCategory);

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
            other is _$CategorySelected &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySelectedCopyWith<_$CategorySelected> get copyWith =>
      __$$CategorySelectedCopyWithImpl<_$CategorySelected>(this, _$identity);

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
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(PurposeChanged value) purposeChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(AccountSelected value) accountSelected,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(Saved value) saved,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(PurposeChanged value)? purposeChanged,
    TResult? Function(DateChanged value)? dateChanged,
    TResult? Function(TypeChanged value)? typeChanged,
    TResult? Function(AccountSelected value)? accountSelected,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(Saved value)? saved,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(PurposeChanged value)? purposeChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(AccountSelected value)? accountSelected,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class CategorySelected implements TransactionFormEvent {
  const factory CategorySelected(final String selectedCategory) =
      _$CategorySelected;

  String get selectedCategory;
  @JsonKey(ignore: true)
  _$$CategorySelectedCopyWith<_$CategorySelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedCopyWith<$Res> {
  factory _$$SavedCopyWith(_$Saved value, $Res Function(_$Saved) then) =
      __$$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res, _$Saved>
    implements _$$SavedCopyWith<$Res> {
  __$$SavedCopyWithImpl(_$Saved _value, $Res Function(_$Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'TransactionFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Saved);
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
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(PurposeChanged value) purposeChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(AccountSelected value) accountSelected,
    required TResult Function(CategorySelected value) categorySelected,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? initialized,
    TResult? Function(AmountChanged value)? amountChanged,
    TResult? Function(PurposeChanged value)? purposeChanged,
    TResult? Function(DateChanged value)? dateChanged,
    TResult? Function(TypeChanged value)? typeChanged,
    TResult? Function(AccountSelected value)? accountSelected,
    TResult? Function(CategorySelected value)? categorySelected,
    TResult? Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(PurposeChanged value)? purposeChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(AccountSelected value)? accountSelected,
    TResult Function(CategorySelected value)? categorySelected,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements TransactionFormEvent {
  const factory Saved() = _$Saved;
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
