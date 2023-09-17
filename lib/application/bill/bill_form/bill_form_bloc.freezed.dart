// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BillFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<BillEntity> initialOption) initialized,
    required TResult Function(String billAmountStr) billAmountChanged,
    required TResult Function(String billNameStr) billNameChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(BillType billType) billTypeChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<BillEntity> initialOption)? initialized,
    TResult? Function(String billAmountStr)? billAmountChanged,
    TResult? Function(String billNameStr)? billNameChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(BillType billType)? billTypeChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BillEntity> initialOption)? initialized,
    TResult Function(String billAmountStr)? billAmountChanged,
    TResult Function(String billNameStr)? billNameChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(BillType billType)? billTypeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BillAmountChanged value) billAmountChanged,
    required TResult Function(_BillNameChanged value) billNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_BillTypeChanged value) billTypeChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_BillAmountChanged value)? billAmountChanged,
    TResult? Function(_BillNameChanged value)? billNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_BillTypeChanged value)? billTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BillAmountChanged value)? billAmountChanged,
    TResult Function(_BillNameChanged value)? billNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_BillTypeChanged value)? billTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillFormEventCopyWith<$Res> {
  factory $BillFormEventCopyWith(
          BillFormEvent value, $Res Function(BillFormEvent) then) =
      _$BillFormEventCopyWithImpl<$Res, BillFormEvent>;
}

/// @nodoc
class _$BillFormEventCopyWithImpl<$Res, $Val extends BillFormEvent>
    implements $BillFormEventCopyWith<$Res> {
  _$BillFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<BillEntity> initialOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$BillFormEventCopyWithImpl<$Res, _$_Initialized>
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
              as Option<BillEntity>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialOption);

  @override
  final Option<BillEntity> initialOption;

  @override
  String toString() {
    return 'BillFormEvent.initialized(initialOption: $initialOption)';
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
    required TResult Function(Option<BillEntity> initialOption) initialized,
    required TResult Function(String billAmountStr) billAmountChanged,
    required TResult Function(String billNameStr) billNameChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(BillType billType) billTypeChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<BillEntity> initialOption)? initialized,
    TResult? Function(String billAmountStr)? billAmountChanged,
    TResult? Function(String billNameStr)? billNameChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(BillType billType)? billTypeChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BillEntity> initialOption)? initialized,
    TResult Function(String billAmountStr)? billAmountChanged,
    TResult Function(String billNameStr)? billNameChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(BillType billType)? billTypeChanged,
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
    required TResult Function(_BillAmountChanged value) billAmountChanged,
    required TResult Function(_BillNameChanged value) billNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_BillTypeChanged value) billTypeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_BillAmountChanged value)? billAmountChanged,
    TResult? Function(_BillNameChanged value)? billNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_BillTypeChanged value)? billTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BillAmountChanged value)? billAmountChanged,
    TResult Function(_BillNameChanged value)? billNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_BillTypeChanged value)? billTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements BillFormEvent {
  const factory _Initialized(final Option<BillEntity> initialOption) =
      _$_Initialized;

  Option<BillEntity> get initialOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BillAmountChangedCopyWith<$Res> {
  factory _$$_BillAmountChangedCopyWith(_$_BillAmountChanged value,
          $Res Function(_$_BillAmountChanged) then) =
      __$$_BillAmountChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String billAmountStr});
}

/// @nodoc
class __$$_BillAmountChangedCopyWithImpl<$Res>
    extends _$BillFormEventCopyWithImpl<$Res, _$_BillAmountChanged>
    implements _$$_BillAmountChangedCopyWith<$Res> {
  __$$_BillAmountChangedCopyWithImpl(
      _$_BillAmountChanged _value, $Res Function(_$_BillAmountChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billAmountStr = null,
  }) {
    return _then(_$_BillAmountChanged(
      null == billAmountStr
          ? _value.billAmountStr
          : billAmountStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BillAmountChanged implements _BillAmountChanged {
  const _$_BillAmountChanged(this.billAmountStr);

  @override
  final String billAmountStr;

  @override
  String toString() {
    return 'BillFormEvent.billAmountChanged(billAmountStr: $billAmountStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillAmountChanged &&
            (identical(other.billAmountStr, billAmountStr) ||
                other.billAmountStr == billAmountStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, billAmountStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillAmountChangedCopyWith<_$_BillAmountChanged> get copyWith =>
      __$$_BillAmountChangedCopyWithImpl<_$_BillAmountChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<BillEntity> initialOption) initialized,
    required TResult Function(String billAmountStr) billAmountChanged,
    required TResult Function(String billNameStr) billNameChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(BillType billType) billTypeChanged,
    required TResult Function() saved,
  }) {
    return billAmountChanged(billAmountStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<BillEntity> initialOption)? initialized,
    TResult? Function(String billAmountStr)? billAmountChanged,
    TResult? Function(String billNameStr)? billNameChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(BillType billType)? billTypeChanged,
    TResult? Function()? saved,
  }) {
    return billAmountChanged?.call(billAmountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BillEntity> initialOption)? initialized,
    TResult Function(String billAmountStr)? billAmountChanged,
    TResult Function(String billNameStr)? billNameChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(BillType billType)? billTypeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (billAmountChanged != null) {
      return billAmountChanged(billAmountStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BillAmountChanged value) billAmountChanged,
    required TResult Function(_BillNameChanged value) billNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_BillTypeChanged value) billTypeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return billAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_BillAmountChanged value)? billAmountChanged,
    TResult? Function(_BillNameChanged value)? billNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_BillTypeChanged value)? billTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return billAmountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BillAmountChanged value)? billAmountChanged,
    TResult Function(_BillNameChanged value)? billNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_BillTypeChanged value)? billTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (billAmountChanged != null) {
      return billAmountChanged(this);
    }
    return orElse();
  }
}

abstract class _BillAmountChanged implements BillFormEvent {
  const factory _BillAmountChanged(final String billAmountStr) =
      _$_BillAmountChanged;

  String get billAmountStr;
  @JsonKey(ignore: true)
  _$$_BillAmountChangedCopyWith<_$_BillAmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BillNameChangedCopyWith<$Res> {
  factory _$$_BillNameChangedCopyWith(
          _$_BillNameChanged value, $Res Function(_$_BillNameChanged) then) =
      __$$_BillNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String billNameStr});
}

/// @nodoc
class __$$_BillNameChangedCopyWithImpl<$Res>
    extends _$BillFormEventCopyWithImpl<$Res, _$_BillNameChanged>
    implements _$$_BillNameChangedCopyWith<$Res> {
  __$$_BillNameChangedCopyWithImpl(
      _$_BillNameChanged _value, $Res Function(_$_BillNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billNameStr = null,
  }) {
    return _then(_$_BillNameChanged(
      null == billNameStr
          ? _value.billNameStr
          : billNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BillNameChanged implements _BillNameChanged {
  const _$_BillNameChanged(this.billNameStr);

  @override
  final String billNameStr;

  @override
  String toString() {
    return 'BillFormEvent.billNameChanged(billNameStr: $billNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillNameChanged &&
            (identical(other.billNameStr, billNameStr) ||
                other.billNameStr == billNameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, billNameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillNameChangedCopyWith<_$_BillNameChanged> get copyWith =>
      __$$_BillNameChangedCopyWithImpl<_$_BillNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<BillEntity> initialOption) initialized,
    required TResult Function(String billAmountStr) billAmountChanged,
    required TResult Function(String billNameStr) billNameChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(BillType billType) billTypeChanged,
    required TResult Function() saved,
  }) {
    return billNameChanged(billNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<BillEntity> initialOption)? initialized,
    TResult? Function(String billAmountStr)? billAmountChanged,
    TResult? Function(String billNameStr)? billNameChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(BillType billType)? billTypeChanged,
    TResult? Function()? saved,
  }) {
    return billNameChanged?.call(billNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BillEntity> initialOption)? initialized,
    TResult Function(String billAmountStr)? billAmountChanged,
    TResult Function(String billNameStr)? billNameChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(BillType billType)? billTypeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (billNameChanged != null) {
      return billNameChanged(billNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BillAmountChanged value) billAmountChanged,
    required TResult Function(_BillNameChanged value) billNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_BillTypeChanged value) billTypeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return billNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_BillAmountChanged value)? billAmountChanged,
    TResult? Function(_BillNameChanged value)? billNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_BillTypeChanged value)? billTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return billNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BillAmountChanged value)? billAmountChanged,
    TResult Function(_BillNameChanged value)? billNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_BillTypeChanged value)? billTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (billNameChanged != null) {
      return billNameChanged(this);
    }
    return orElse();
  }
}

abstract class _BillNameChanged implements BillFormEvent {
  const factory _BillNameChanged(final String billNameStr) = _$_BillNameChanged;

  String get billNameStr;
  @JsonKey(ignore: true)
  _$$_BillNameChangedCopyWith<_$_BillNameChanged> get copyWith =>
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
    extends _$BillFormEventCopyWithImpl<$Res, _$_DateChanged>
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
    return 'BillFormEvent.dateChanged(dateTime: $dateTime)';
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
    required TResult Function(Option<BillEntity> initialOption) initialized,
    required TResult Function(String billAmountStr) billAmountChanged,
    required TResult Function(String billNameStr) billNameChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(BillType billType) billTypeChanged,
    required TResult Function() saved,
  }) {
    return dateChanged(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<BillEntity> initialOption)? initialized,
    TResult? Function(String billAmountStr)? billAmountChanged,
    TResult? Function(String billNameStr)? billNameChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(BillType billType)? billTypeChanged,
    TResult? Function()? saved,
  }) {
    return dateChanged?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BillEntity> initialOption)? initialized,
    TResult Function(String billAmountStr)? billAmountChanged,
    TResult Function(String billNameStr)? billNameChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(BillType billType)? billTypeChanged,
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
    required TResult Function(_BillAmountChanged value) billAmountChanged,
    required TResult Function(_BillNameChanged value) billNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_BillTypeChanged value) billTypeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_BillAmountChanged value)? billAmountChanged,
    TResult? Function(_BillNameChanged value)? billNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_BillTypeChanged value)? billTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BillAmountChanged value)? billAmountChanged,
    TResult Function(_BillNameChanged value)? billNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_BillTypeChanged value)? billTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements BillFormEvent {
  const factory _DateChanged(final DateTime dateTime) = _$_DateChanged;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$_DateChangedCopyWith<_$_DateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BillTypeChangedCopyWith<$Res> {
  factory _$$_BillTypeChangedCopyWith(
          _$_BillTypeChanged value, $Res Function(_$_BillTypeChanged) then) =
      __$$_BillTypeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({BillType billType});
}

/// @nodoc
class __$$_BillTypeChangedCopyWithImpl<$Res>
    extends _$BillFormEventCopyWithImpl<$Res, _$_BillTypeChanged>
    implements _$$_BillTypeChangedCopyWith<$Res> {
  __$$_BillTypeChangedCopyWithImpl(
      _$_BillTypeChanged _value, $Res Function(_$_BillTypeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billType = null,
  }) {
    return _then(_$_BillTypeChanged(
      null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as BillType,
    ));
  }
}

/// @nodoc

class _$_BillTypeChanged implements _BillTypeChanged {
  const _$_BillTypeChanged(this.billType);

  @override
  final BillType billType;

  @override
  String toString() {
    return 'BillFormEvent.billTypeChanged(billType: $billType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillTypeChanged &&
            (identical(other.billType, billType) ||
                other.billType == billType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, billType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillTypeChangedCopyWith<_$_BillTypeChanged> get copyWith =>
      __$$_BillTypeChangedCopyWithImpl<_$_BillTypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<BillEntity> initialOption) initialized,
    required TResult Function(String billAmountStr) billAmountChanged,
    required TResult Function(String billNameStr) billNameChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(BillType billType) billTypeChanged,
    required TResult Function() saved,
  }) {
    return billTypeChanged(billType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<BillEntity> initialOption)? initialized,
    TResult? Function(String billAmountStr)? billAmountChanged,
    TResult? Function(String billNameStr)? billNameChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(BillType billType)? billTypeChanged,
    TResult? Function()? saved,
  }) {
    return billTypeChanged?.call(billType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BillEntity> initialOption)? initialized,
    TResult Function(String billAmountStr)? billAmountChanged,
    TResult Function(String billNameStr)? billNameChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(BillType billType)? billTypeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (billTypeChanged != null) {
      return billTypeChanged(billType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BillAmountChanged value) billAmountChanged,
    required TResult Function(_BillNameChanged value) billNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_BillTypeChanged value) billTypeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return billTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_BillAmountChanged value)? billAmountChanged,
    TResult? Function(_BillNameChanged value)? billNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_BillTypeChanged value)? billTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return billTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BillAmountChanged value)? billAmountChanged,
    TResult Function(_BillNameChanged value)? billNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_BillTypeChanged value)? billTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (billTypeChanged != null) {
      return billTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _BillTypeChanged implements BillFormEvent {
  const factory _BillTypeChanged(final BillType billType) = _$_BillTypeChanged;

  BillType get billType;
  @JsonKey(ignore: true)
  _$$_BillTypeChangedCopyWith<_$_BillTypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$BillFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'BillFormEvent.saved()';
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
    required TResult Function(Option<BillEntity> initialOption) initialized,
    required TResult Function(String billAmountStr) billAmountChanged,
    required TResult Function(String billNameStr) billNameChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function(BillType billType) billTypeChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<BillEntity> initialOption)? initialized,
    TResult? Function(String billAmountStr)? billAmountChanged,
    TResult? Function(String billNameStr)? billNameChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function(BillType billType)? billTypeChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BillEntity> initialOption)? initialized,
    TResult Function(String billAmountStr)? billAmountChanged,
    TResult Function(String billNameStr)? billNameChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function(BillType billType)? billTypeChanged,
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
    required TResult Function(_BillAmountChanged value) billAmountChanged,
    required TResult Function(_BillNameChanged value) billNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_BillTypeChanged value) billTypeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_BillAmountChanged value)? billAmountChanged,
    TResult? Function(_BillNameChanged value)? billNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_BillTypeChanged value)? billTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BillAmountChanged value)? billAmountChanged,
    TResult Function(_BillNameChanged value)? billNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_BillTypeChanged value)? billTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements BillFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$BillFormState {
  BillEntity get billEntity => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSucessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BillFormStateCopyWith<BillFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillFormStateCopyWith<$Res> {
  factory $BillFormStateCopyWith(
          BillFormState value, $Res Function(BillFormState) then) =
      _$BillFormStateCopyWithImpl<$Res, BillFormState>;
  @useResult
  $Res call(
      {BillEntity billEntity,
      bool isEditing,
      bool isSaving,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption});

  $BillEntityCopyWith<$Res> get billEntity;
}

/// @nodoc
class _$BillFormStateCopyWithImpl<$Res, $Val extends BillFormState>
    implements $BillFormStateCopyWith<$Res> {
  _$BillFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billEntity = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_value.copyWith(
      billEntity: null == billEntity
          ? _value.billEntity
          : billEntity // ignore: cast_nullable_to_non_nullable
              as BillEntity,
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
  $BillEntityCopyWith<$Res> get billEntity {
    return $BillEntityCopyWith<$Res>(_value.billEntity, (value) {
      return _then(_value.copyWith(billEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BillFormStateCopyWith<$Res>
    implements $BillFormStateCopyWith<$Res> {
  factory _$$_BillFormStateCopyWith(
          _$_BillFormState value, $Res Function(_$_BillFormState) then) =
      __$$_BillFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BillEntity billEntity,
      bool isEditing,
      bool isSaving,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption});

  @override
  $BillEntityCopyWith<$Res> get billEntity;
}

/// @nodoc
class __$$_BillFormStateCopyWithImpl<$Res>
    extends _$BillFormStateCopyWithImpl<$Res, _$_BillFormState>
    implements _$$_BillFormStateCopyWith<$Res> {
  __$$_BillFormStateCopyWithImpl(
      _$_BillFormState _value, $Res Function(_$_BillFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billEntity = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_$_BillFormState(
      billEntity: null == billEntity
          ? _value.billEntity
          : billEntity // ignore: cast_nullable_to_non_nullable
              as BillEntity,
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

class _$_BillFormState implements _BillFormState {
  const _$_BillFormState(
      {required this.billEntity,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSucessOption});

  @override
  final BillEntity billEntity;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption;

  @override
  String toString() {
    return 'BillFormState(billEntity: $billEntity, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSucessOption: $saveFailureOrSucessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillFormState &&
            (identical(other.billEntity, billEntity) ||
                other.billEntity == billEntity) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSucessOption,
                    saveFailureOrSucessOption) ||
                other.saveFailureOrSucessOption == saveFailureOrSucessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, billEntity, isEditing, isSaving, saveFailureOrSucessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillFormStateCopyWith<_$_BillFormState> get copyWith =>
      __$$_BillFormStateCopyWithImpl<_$_BillFormState>(this, _$identity);
}

abstract class _BillFormState implements BillFormState {
  const factory _BillFormState(
      {required final BillEntity billEntity,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<FirestoreFailure, Unit>>
          saveFailureOrSucessOption}) = _$_BillFormState;

  @override
  BillEntity get billEntity;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSucessOption;
  @override
  @JsonKey(ignore: true)
  _$$_BillFormStateCopyWith<_$_BillFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
