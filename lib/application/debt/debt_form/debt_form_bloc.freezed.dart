// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debt_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DebtFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<DebtEntity> initialNoteOption) initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime startDate) startDateChanged,
    required TResult Function(DateTime endDate) endDateChanged,
    required TResult Function(DebtType debtType) typeChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime startDate)? startDateChanged,
    TResult? Function(DateTime endDate)? endDateChanged,
    TResult? Function(DebtType debtType)? typeChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime startDate)? startDateChanged,
    TResult Function(DateTime endDate)? endDateChanged,
    TResult Function(DebtType debtType)? typeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_EndDateChanged value) endDateChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_StartDateChanged value)? startDateChanged,
    TResult? Function(_EndDateChanged value)? endDateChanged,
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_EndDateChanged value)? endDateChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebtFormEventCopyWith<$Res> {
  factory $DebtFormEventCopyWith(
          DebtFormEvent value, $Res Function(DebtFormEvent) then) =
      _$DebtFormEventCopyWithImpl<$Res, DebtFormEvent>;
}

/// @nodoc
class _$DebtFormEventCopyWithImpl<$Res, $Val extends DebtFormEvent>
    implements $DebtFormEventCopyWith<$Res> {
  _$DebtFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<DebtEntity> initialNoteOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$DebtFormEventCopyWithImpl<$Res, _$_Initialized>
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
              as Option<DebtEntity>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialNoteOption);

  @override
  final Option<DebtEntity> initialNoteOption;

  @override
  String toString() {
    return 'DebtFormEvent.initialized(initialNoteOption: $initialNoteOption)';
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
    required TResult Function(Option<DebtEntity> initialNoteOption) initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime startDate) startDateChanged,
    required TResult Function(DateTime endDate) endDateChanged,
    required TResult Function(DebtType debtType) typeChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime startDate)? startDateChanged,
    TResult? Function(DateTime endDate)? endDateChanged,
    TResult? Function(DebtType debtType)? typeChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime startDate)? startDateChanged,
    TResult Function(DateTime endDate)? endDateChanged,
    TResult Function(DebtType debtType)? typeChanged,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_EndDateChanged value) endDateChanged,
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
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_StartDateChanged value)? startDateChanged,
    TResult? Function(_EndDateChanged value)? endDateChanged,
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
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_EndDateChanged value)? endDateChanged,
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

abstract class _Initialized implements DebtFormEvent {
  const factory _Initialized(final Option<DebtEntity> initialNoteOption) =
      _$_Initialized;

  Option<DebtEntity> get initialNoteOption;
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
    extends _$DebtFormEventCopyWithImpl<$Res, _$_AmountChanged>
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
    return 'DebtFormEvent.amountChanged(amountStr: $amountStr)';
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
    required TResult Function(Option<DebtEntity> initialNoteOption) initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime startDate) startDateChanged,
    required TResult Function(DateTime endDate) endDateChanged,
    required TResult Function(DebtType debtType) typeChanged,
    required TResult Function() saved,
  }) {
    return amountChanged(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime startDate)? startDateChanged,
    TResult? Function(DateTime endDate)? endDateChanged,
    TResult? Function(DebtType debtType)? typeChanged,
    TResult? Function()? saved,
  }) {
    return amountChanged?.call(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime startDate)? startDateChanged,
    TResult Function(DateTime endDate)? endDateChanged,
    TResult Function(DebtType debtType)? typeChanged,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_EndDateChanged value) endDateChanged,
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
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_StartDateChanged value)? startDateChanged,
    TResult? Function(_EndDateChanged value)? endDateChanged,
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
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_EndDateChanged value)? endDateChanged,
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

abstract class _AmountChanged implements DebtFormEvent {
  const factory _AmountChanged(final String amountStr) = _$_AmountChanged;

  String get amountStr;
  @JsonKey(ignore: true)
  _$$_AmountChangedCopyWith<_$_AmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$DebtFormEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$_NameChanged(
      null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'DebtFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<DebtEntity> initialNoteOption) initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime startDate) startDateChanged,
    required TResult Function(DateTime endDate) endDateChanged,
    required TResult Function(DebtType debtType) typeChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime startDate)? startDateChanged,
    TResult? Function(DateTime endDate)? endDateChanged,
    TResult? Function(DebtType debtType)? typeChanged,
    TResult? Function()? saved,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime startDate)? startDateChanged,
    TResult Function(DateTime endDate)? endDateChanged,
    TResult Function(DebtType debtType)? typeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_EndDateChanged value) endDateChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_StartDateChanged value)? startDateChanged,
    TResult? Function(_EndDateChanged value)? endDateChanged,
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_EndDateChanged value)? endDateChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements DebtFormEvent {
  const factory _NameChanged(final String nameStr) = _$_NameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DescriptionChangedCopyWith<$Res> {
  factory _$$_DescriptionChangedCopyWith(_$_DescriptionChanged value,
          $Res Function(_$_DescriptionChanged) then) =
      __$$_DescriptionChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String descriptionStr});
}

/// @nodoc
class __$$_DescriptionChangedCopyWithImpl<$Res>
    extends _$DebtFormEventCopyWithImpl<$Res, _$_DescriptionChanged>
    implements _$$_DescriptionChangedCopyWith<$Res> {
  __$$_DescriptionChangedCopyWithImpl(
      _$_DescriptionChanged _value, $Res Function(_$_DescriptionChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptionStr = null,
  }) {
    return _then(_$_DescriptionChanged(
      null == descriptionStr
          ? _value.descriptionStr
          : descriptionStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.descriptionStr);

  @override
  final String descriptionStr;

  @override
  String toString() {
    return 'DebtFormEvent.descriptionChanged(descriptionStr: $descriptionStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DescriptionChanged &&
            (identical(other.descriptionStr, descriptionStr) ||
                other.descriptionStr == descriptionStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, descriptionStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DescriptionChangedCopyWith<_$_DescriptionChanged> get copyWith =>
      __$$_DescriptionChangedCopyWithImpl<_$_DescriptionChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<DebtEntity> initialNoteOption) initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime startDate) startDateChanged,
    required TResult Function(DateTime endDate) endDateChanged,
    required TResult Function(DebtType debtType) typeChanged,
    required TResult Function() saved,
  }) {
    return descriptionChanged(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime startDate)? startDateChanged,
    TResult? Function(DateTime endDate)? endDateChanged,
    TResult? Function(DebtType debtType)? typeChanged,
    TResult? Function()? saved,
  }) {
    return descriptionChanged?.call(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime startDate)? startDateChanged,
    TResult Function(DateTime endDate)? endDateChanged,
    TResult Function(DebtType debtType)? typeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(descriptionStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_EndDateChanged value) endDateChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_StartDateChanged value)? startDateChanged,
    TResult? Function(_EndDateChanged value)? endDateChanged,
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_EndDateChanged value)? endDateChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements DebtFormEvent {
  const factory _DescriptionChanged(final String descriptionStr) =
      _$_DescriptionChanged;

  String get descriptionStr;
  @JsonKey(ignore: true)
  _$$_DescriptionChangedCopyWith<_$_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StartDateChangedCopyWith<$Res> {
  factory _$$_StartDateChangedCopyWith(
          _$_StartDateChanged value, $Res Function(_$_StartDateChanged) then) =
      __$$_StartDateChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startDate});
}

/// @nodoc
class __$$_StartDateChangedCopyWithImpl<$Res>
    extends _$DebtFormEventCopyWithImpl<$Res, _$_StartDateChanged>
    implements _$$_StartDateChangedCopyWith<$Res> {
  __$$_StartDateChangedCopyWithImpl(
      _$_StartDateChanged _value, $Res Function(_$_StartDateChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
  }) {
    return _then(_$_StartDateChanged(
      null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_StartDateChanged implements _StartDateChanged {
  const _$_StartDateChanged(this.startDate);

  @override
  final DateTime startDate;

  @override
  String toString() {
    return 'DebtFormEvent.startDateChanged(startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartDateChanged &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartDateChangedCopyWith<_$_StartDateChanged> get copyWith =>
      __$$_StartDateChangedCopyWithImpl<_$_StartDateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<DebtEntity> initialNoteOption) initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime startDate) startDateChanged,
    required TResult Function(DateTime endDate) endDateChanged,
    required TResult Function(DebtType debtType) typeChanged,
    required TResult Function() saved,
  }) {
    return startDateChanged(startDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime startDate)? startDateChanged,
    TResult? Function(DateTime endDate)? endDateChanged,
    TResult? Function(DebtType debtType)? typeChanged,
    TResult? Function()? saved,
  }) {
    return startDateChanged?.call(startDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime startDate)? startDateChanged,
    TResult Function(DateTime endDate)? endDateChanged,
    TResult Function(DebtType debtType)? typeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (startDateChanged != null) {
      return startDateChanged(startDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_EndDateChanged value) endDateChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return startDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_StartDateChanged value)? startDateChanged,
    TResult? Function(_EndDateChanged value)? endDateChanged,
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return startDateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_EndDateChanged value)? endDateChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (startDateChanged != null) {
      return startDateChanged(this);
    }
    return orElse();
  }
}

abstract class _StartDateChanged implements DebtFormEvent {
  const factory _StartDateChanged(final DateTime startDate) =
      _$_StartDateChanged;

  DateTime get startDate;
  @JsonKey(ignore: true)
  _$$_StartDateChangedCopyWith<_$_StartDateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EndDateChangedCopyWith<$Res> {
  factory _$$_EndDateChangedCopyWith(
          _$_EndDateChanged value, $Res Function(_$_EndDateChanged) then) =
      __$$_EndDateChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime endDate});
}

/// @nodoc
class __$$_EndDateChangedCopyWithImpl<$Res>
    extends _$DebtFormEventCopyWithImpl<$Res, _$_EndDateChanged>
    implements _$$_EndDateChangedCopyWith<$Res> {
  __$$_EndDateChangedCopyWithImpl(
      _$_EndDateChanged _value, $Res Function(_$_EndDateChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endDate = null,
  }) {
    return _then(_$_EndDateChanged(
      null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_EndDateChanged implements _EndDateChanged {
  const _$_EndDateChanged(this.endDate);

  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'DebtFormEvent.endDateChanged(endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EndDateChanged &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EndDateChangedCopyWith<_$_EndDateChanged> get copyWith =>
      __$$_EndDateChangedCopyWithImpl<_$_EndDateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<DebtEntity> initialNoteOption) initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime startDate) startDateChanged,
    required TResult Function(DateTime endDate) endDateChanged,
    required TResult Function(DebtType debtType) typeChanged,
    required TResult Function() saved,
  }) {
    return endDateChanged(endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime startDate)? startDateChanged,
    TResult? Function(DateTime endDate)? endDateChanged,
    TResult? Function(DebtType debtType)? typeChanged,
    TResult? Function()? saved,
  }) {
    return endDateChanged?.call(endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime startDate)? startDateChanged,
    TResult Function(DateTime endDate)? endDateChanged,
    TResult Function(DebtType debtType)? typeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (endDateChanged != null) {
      return endDateChanged(endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_EndDateChanged value) endDateChanged,
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return endDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_StartDateChanged value)? startDateChanged,
    TResult? Function(_EndDateChanged value)? endDateChanged,
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return endDateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_EndDateChanged value)? endDateChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (endDateChanged != null) {
      return endDateChanged(this);
    }
    return orElse();
  }
}

abstract class _EndDateChanged implements DebtFormEvent {
  const factory _EndDateChanged(final DateTime endDate) = _$_EndDateChanged;

  DateTime get endDate;
  @JsonKey(ignore: true)
  _$$_EndDateChangedCopyWith<_$_EndDateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TypeChangedCopyWith<$Res> {
  factory _$$_TypeChangedCopyWith(
          _$_TypeChanged value, $Res Function(_$_TypeChanged) then) =
      __$$_TypeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DebtType debtType});
}

/// @nodoc
class __$$_TypeChangedCopyWithImpl<$Res>
    extends _$DebtFormEventCopyWithImpl<$Res, _$_TypeChanged>
    implements _$$_TypeChangedCopyWith<$Res> {
  __$$_TypeChangedCopyWithImpl(
      _$_TypeChanged _value, $Res Function(_$_TypeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debtType = null,
  }) {
    return _then(_$_TypeChanged(
      null == debtType
          ? _value.debtType
          : debtType // ignore: cast_nullable_to_non_nullable
              as DebtType,
    ));
  }
}

/// @nodoc

class _$_TypeChanged implements _TypeChanged {
  const _$_TypeChanged(this.debtType);

  @override
  final DebtType debtType;

  @override
  String toString() {
    return 'DebtFormEvent.typeChanged(debtType: $debtType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeChanged &&
            (identical(other.debtType, debtType) ||
                other.debtType == debtType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, debtType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeChangedCopyWith<_$_TypeChanged> get copyWith =>
      __$$_TypeChangedCopyWithImpl<_$_TypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<DebtEntity> initialNoteOption) initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime startDate) startDateChanged,
    required TResult Function(DateTime endDate) endDateChanged,
    required TResult Function(DebtType debtType) typeChanged,
    required TResult Function() saved,
  }) {
    return typeChanged(debtType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime startDate)? startDateChanged,
    TResult? Function(DateTime endDate)? endDateChanged,
    TResult? Function(DebtType debtType)? typeChanged,
    TResult? Function()? saved,
  }) {
    return typeChanged?.call(debtType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime startDate)? startDateChanged,
    TResult Function(DateTime endDate)? endDateChanged,
    TResult Function(DebtType debtType)? typeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(debtType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_EndDateChanged value) endDateChanged,
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
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_StartDateChanged value)? startDateChanged,
    TResult? Function(_EndDateChanged value)? endDateChanged,
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
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_EndDateChanged value)? endDateChanged,
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

abstract class _TypeChanged implements DebtFormEvent {
  const factory _TypeChanged(final DebtType debtType) = _$_TypeChanged;

  DebtType get debtType;
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
    extends _$DebtFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'DebtFormEvent.saved()';
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
    required TResult Function(Option<DebtEntity> initialNoteOption) initialized,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime startDate) startDateChanged,
    required TResult Function(DateTime endDate) endDateChanged,
    required TResult Function(DebtType debtType) typeChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult? Function(String amountStr)? amountChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime startDate)? startDateChanged,
    TResult? Function(DateTime endDate)? endDateChanged,
    TResult? Function(DebtType debtType)? typeChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<DebtEntity> initialNoteOption)? initialized,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime startDate)? startDateChanged,
    TResult Function(DateTime endDate)? endDateChanged,
    TResult Function(DebtType debtType)? typeChanged,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_StartDateChanged value) startDateChanged,
    required TResult Function(_EndDateChanged value) endDateChanged,
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
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_StartDateChanged value)? startDateChanged,
    TResult? Function(_EndDateChanged value)? endDateChanged,
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
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_StartDateChanged value)? startDateChanged,
    TResult Function(_EndDateChanged value)? endDateChanged,
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

abstract class _Saved implements DebtFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$DebtFormState {
  DebtEntity get debtEntity => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSucessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DebtFormStateCopyWith<DebtFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebtFormStateCopyWith<$Res> {
  factory $DebtFormStateCopyWith(
          DebtFormState value, $Res Function(DebtFormState) then) =
      _$DebtFormStateCopyWithImpl<$Res, DebtFormState>;
  @useResult
  $Res call(
      {DebtEntity debtEntity,
      bool isEditing,
      bool isSaving,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption});

  $DebtEntityCopyWith<$Res> get debtEntity;
}

/// @nodoc
class _$DebtFormStateCopyWithImpl<$Res, $Val extends DebtFormState>
    implements $DebtFormStateCopyWith<$Res> {
  _$DebtFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debtEntity = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_value.copyWith(
      debtEntity: null == debtEntity
          ? _value.debtEntity
          : debtEntity // ignore: cast_nullable_to_non_nullable
              as DebtEntity,
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
  $DebtEntityCopyWith<$Res> get debtEntity {
    return $DebtEntityCopyWith<$Res>(_value.debtEntity, (value) {
      return _then(_value.copyWith(debtEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DebtFormStateCopyWith<$Res>
    implements $DebtFormStateCopyWith<$Res> {
  factory _$$_DebtFormStateCopyWith(
          _$_DebtFormState value, $Res Function(_$_DebtFormState) then) =
      __$$_DebtFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DebtEntity debtEntity,
      bool isEditing,
      bool isSaving,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption});

  @override
  $DebtEntityCopyWith<$Res> get debtEntity;
}

/// @nodoc
class __$$_DebtFormStateCopyWithImpl<$Res>
    extends _$DebtFormStateCopyWithImpl<$Res, _$_DebtFormState>
    implements _$$_DebtFormStateCopyWith<$Res> {
  __$$_DebtFormStateCopyWithImpl(
      _$_DebtFormState _value, $Res Function(_$_DebtFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debtEntity = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_$_DebtFormState(
      debtEntity: null == debtEntity
          ? _value.debtEntity
          : debtEntity // ignore: cast_nullable_to_non_nullable
              as DebtEntity,
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

class _$_DebtFormState implements _DebtFormState {
  const _$_DebtFormState(
      {required this.debtEntity,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSucessOption});

  @override
  final DebtEntity debtEntity;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption;

  @override
  String toString() {
    return 'DebtFormState(debtEntity: $debtEntity, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSucessOption: $saveFailureOrSucessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DebtFormState &&
            (identical(other.debtEntity, debtEntity) ||
                other.debtEntity == debtEntity) &&
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
      runtimeType, debtEntity, isEditing, isSaving, saveFailureOrSucessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DebtFormStateCopyWith<_$_DebtFormState> get copyWith =>
      __$$_DebtFormStateCopyWithImpl<_$_DebtFormState>(this, _$identity);
}

abstract class _DebtFormState implements DebtFormState {
  const factory _DebtFormState(
      {required final DebtEntity debtEntity,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<FirestoreFailure, Unit>>
          saveFailureOrSucessOption}) = _$_DebtFormState;

  @override
  DebtEntity get debtEntity;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSucessOption;
  @override
  @JsonKey(ignore: true)
  _$$_DebtFormStateCopyWith<_$_DebtFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
