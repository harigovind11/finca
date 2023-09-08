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
    required TResult Function(Option<TransactionEntity> initialNoteOption)
        initialized,
    required TResult Function(String amountValue) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(CategoryType categoryType) typeChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialNoteOption)? initialized,
    TResult? Function(String amountValue)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(CategoryType categoryType)? typeChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialNoteOption)? initialized,
    TResult Function(String amountValue)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(CategoryType categoryType)? typeChanged,
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
  $Res call({Option<TransactionEntity> initialNoteOption});
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
    Object? initialNoteOption = null,
  }) {
    return _then(_$_Initialized(
      null == initialNoteOption
          ? _value.initialNoteOption
          : initialNoteOption // ignore: cast_nullable_to_non_nullable
              as Option<TransactionEntity>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialNoteOption);

  @override
  final Option<TransactionEntity> initialNoteOption;

  @override
  String toString() {
    return 'TransactionFormEvent.initialized(initialNoteOption: $initialNoteOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialNoteOption, initialNoteOption) ||
                other.initialNoteOption == initialNoteOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialNoteOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TransactionEntity> initialNoteOption)
        initialized,
    required TResult Function(String amountValue) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(CategoryType categoryType) typeChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialNoteOption)? initialized,
    TResult? Function(String amountValue)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(CategoryType categoryType)? typeChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialNoteOption)? initialized,
    TResult Function(String amountValue)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(CategoryType categoryType)? typeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialNoteOption);
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
  const factory _Initialized(
      final Option<TransactionEntity> initialNoteOption) = _$_Initialized;

  Option<TransactionEntity> get initialNoteOption;
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
  $Res call({String amountValue});
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
    Object? amountValue = null,
  }) {
    return _then(_$_AmountChanged(
      null == amountValue
          ? _value.amountValue
          : amountValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AmountChanged implements _AmountChanged {
  const _$_AmountChanged(this.amountValue);

  @override
  final String amountValue;

  @override
  String toString() {
    return 'TransactionFormEvent.amountChanged(amountValue: $amountValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmountChanged &&
            (identical(other.amountValue, amountValue) ||
                other.amountValue == amountValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AmountChangedCopyWith<_$_AmountChanged> get copyWith =>
      __$$_AmountChangedCopyWithImpl<_$_AmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TransactionEntity> initialNoteOption)
        initialized,
    required TResult Function(String amountValue) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(CategoryType categoryType) typeChanged,
    required TResult Function() saved,
  }) {
    return amountChanged(amountValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialNoteOption)? initialized,
    TResult? Function(String amountValue)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(CategoryType categoryType)? typeChanged,
    TResult? Function()? saved,
  }) {
    return amountChanged?.call(amountValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialNoteOption)? initialized,
    TResult Function(String amountValue)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(CategoryType categoryType)? typeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(amountValue);
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
  const factory _AmountChanged(final String amountValue) = _$_AmountChanged;

  String get amountValue;
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
    required TResult Function(Option<TransactionEntity> initialNoteOption)
        initialized,
    required TResult Function(String amountValue) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(CategoryType categoryType) typeChanged,
    required TResult Function() saved,
  }) {
    return purposeChanged(purposeStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialNoteOption)? initialized,
    TResult? Function(String amountValue)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(CategoryType categoryType)? typeChanged,
    TResult? Function()? saved,
  }) {
    return purposeChanged?.call(purposeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialNoteOption)? initialized,
    TResult Function(String amountValue)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(CategoryType categoryType)? typeChanged,
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
    required TResult Function(Option<TransactionEntity> initialNoteOption)
        initialized,
    required TResult Function(String amountValue) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(CategoryType categoryType) typeChanged,
    required TResult Function() saved,
  }) {
    return dateChanged(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialNoteOption)? initialized,
    TResult? Function(String amountValue)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(CategoryType categoryType)? typeChanged,
    TResult? Function()? saved,
  }) {
    return dateChanged?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialNoteOption)? initialized,
    TResult Function(String amountValue)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(CategoryType categoryType)? typeChanged,
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
  $Res call({CategoryType categoryType});
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
    Object? categoryType = null,
  }) {
    return _then(_$_TypeChanged(
      null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType,
    ));
  }
}

/// @nodoc

class _$_TypeChanged implements _TypeChanged {
  const _$_TypeChanged(this.categoryType);

  @override
  final CategoryType categoryType;

  @override
  String toString() {
    return 'TransactionFormEvent.typeChanged(categoryType: $categoryType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeChanged &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeChangedCopyWith<_$_TypeChanged> get copyWith =>
      __$$_TypeChangedCopyWithImpl<_$_TypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<TransactionEntity> initialNoteOption)
        initialized,
    required TResult Function(String amountValue) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(CategoryType categoryType) typeChanged,
    required TResult Function() saved,
  }) {
    return typeChanged(categoryType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialNoteOption)? initialized,
    TResult? Function(String amountValue)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(CategoryType categoryType)? typeChanged,
    TResult? Function()? saved,
  }) {
    return typeChanged?.call(categoryType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialNoteOption)? initialized,
    TResult Function(String amountValue)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(CategoryType categoryType)? typeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(categoryType);
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
  const factory _TypeChanged(final CategoryType categoryType) = _$_TypeChanged;

  CategoryType get categoryType;
  @JsonKey(ignore: true)
  _$$_TypeChangedCopyWith<_$_TypeChanged> get copyWith =>
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
    required TResult Function(Option<TransactionEntity> initialNoteOption)
        initialized,
    required TResult Function(String amountValue) amountChanged,
    required TResult Function(String purposeStr) purposeChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(CategoryType categoryType) typeChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<TransactionEntity> initialNoteOption)? initialized,
    TResult? Function(String amountValue)? amountChanged,
    TResult? Function(String purposeStr)? purposeChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(CategoryType categoryType)? typeChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<TransactionEntity> initialNoteOption)? initialized,
    TResult Function(String amountValue)? amountChanged,
    TResult Function(String purposeStr)? purposeChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(CategoryType categoryType)? typeChanged,
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
  Option<Either<TransactionFailure, Unit>> get saveFailureOrSucessOption =>
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
      Option<Either<TransactionFailure, Unit>> saveFailureOrSucessOption});

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
              as Option<Either<TransactionFailure, Unit>>,
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
      Option<Either<TransactionFailure, Unit>> saveFailureOrSucessOption});

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
              as Option<Either<TransactionFailure, Unit>>,
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
  final Option<Either<TransactionFailure, Unit>> saveFailureOrSucessOption;

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
      required final Option<Either<TransactionFailure, Unit>>
          saveFailureOrSucessOption}) = _$_TransactionFormState;

  @override
  TransactionEntity get transactionEntity;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<TransactionFailure, Unit>> get saveFailureOrSucessOption;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionFormStateCopyWith<_$_TransactionFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
