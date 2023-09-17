// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saving_plan_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SavingPlanFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<SavingPlanEntity> initialOption)
        initialized,
    required TResult Function(String goalAmountStr) goalAmountChanged,
    required TResult Function(String planNameStr) planNameChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<SavingPlanEntity> initialOption)? initialized,
    TResult? Function(String goalAmountStr)? goalAmountChanged,
    TResult? Function(String planNameStr)? planNameChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<SavingPlanEntity> initialOption)? initialized,
    TResult Function(String goalAmountStr)? goalAmountChanged,
    TResult Function(String planNameStr)? planNameChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GoalAmountChanged value) goalAmountChanged,
    required TResult Function(_PlanNameChanged value) planNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GoalAmountChanged value)? goalAmountChanged,
    TResult? Function(_PlanNameChanged value)? planNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GoalAmountChanged value)? goalAmountChanged,
    TResult Function(_PlanNameChanged value)? planNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavingPlanFormEventCopyWith<$Res> {
  factory $SavingPlanFormEventCopyWith(
          SavingPlanFormEvent value, $Res Function(SavingPlanFormEvent) then) =
      _$SavingPlanFormEventCopyWithImpl<$Res, SavingPlanFormEvent>;
}

/// @nodoc
class _$SavingPlanFormEventCopyWithImpl<$Res, $Val extends SavingPlanFormEvent>
    implements $SavingPlanFormEventCopyWith<$Res> {
  _$SavingPlanFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<SavingPlanEntity> initialOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$SavingPlanFormEventCopyWithImpl<$Res, _$_Initialized>
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
              as Option<SavingPlanEntity>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialOption);

  @override
  final Option<SavingPlanEntity> initialOption;

  @override
  String toString() {
    return 'SavingPlanFormEvent.initialized(initialOption: $initialOption)';
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
    required TResult Function(Option<SavingPlanEntity> initialOption)
        initialized,
    required TResult Function(String goalAmountStr) goalAmountChanged,
    required TResult Function(String planNameStr) planNameChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<SavingPlanEntity> initialOption)? initialized,
    TResult? Function(String goalAmountStr)? goalAmountChanged,
    TResult? Function(String planNameStr)? planNameChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<SavingPlanEntity> initialOption)? initialized,
    TResult Function(String goalAmountStr)? goalAmountChanged,
    TResult Function(String planNameStr)? planNameChanged,
    TResult Function(DateTime dateTime)? dateChanged,
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
    required TResult Function(_GoalAmountChanged value) goalAmountChanged,
    required TResult Function(_PlanNameChanged value) planNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GoalAmountChanged value)? goalAmountChanged,
    TResult? Function(_PlanNameChanged value)? planNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GoalAmountChanged value)? goalAmountChanged,
    TResult Function(_PlanNameChanged value)? planNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SavingPlanFormEvent {
  const factory _Initialized(final Option<SavingPlanEntity> initialOption) =
      _$_Initialized;

  Option<SavingPlanEntity> get initialOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GoalAmountChangedCopyWith<$Res> {
  factory _$$_GoalAmountChangedCopyWith(_$_GoalAmountChanged value,
          $Res Function(_$_GoalAmountChanged) then) =
      __$$_GoalAmountChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String goalAmountStr});
}

/// @nodoc
class __$$_GoalAmountChangedCopyWithImpl<$Res>
    extends _$SavingPlanFormEventCopyWithImpl<$Res, _$_GoalAmountChanged>
    implements _$$_GoalAmountChangedCopyWith<$Res> {
  __$$_GoalAmountChangedCopyWithImpl(
      _$_GoalAmountChanged _value, $Res Function(_$_GoalAmountChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goalAmountStr = null,
  }) {
    return _then(_$_GoalAmountChanged(
      null == goalAmountStr
          ? _value.goalAmountStr
          : goalAmountStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GoalAmountChanged implements _GoalAmountChanged {
  const _$_GoalAmountChanged(this.goalAmountStr);

  @override
  final String goalAmountStr;

  @override
  String toString() {
    return 'SavingPlanFormEvent.goalAmountChanged(goalAmountStr: $goalAmountStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoalAmountChanged &&
            (identical(other.goalAmountStr, goalAmountStr) ||
                other.goalAmountStr == goalAmountStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, goalAmountStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoalAmountChangedCopyWith<_$_GoalAmountChanged> get copyWith =>
      __$$_GoalAmountChangedCopyWithImpl<_$_GoalAmountChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<SavingPlanEntity> initialOption)
        initialized,
    required TResult Function(String goalAmountStr) goalAmountChanged,
    required TResult Function(String planNameStr) planNameChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function() saved,
  }) {
    return goalAmountChanged(goalAmountStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<SavingPlanEntity> initialOption)? initialized,
    TResult? Function(String goalAmountStr)? goalAmountChanged,
    TResult? Function(String planNameStr)? planNameChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function()? saved,
  }) {
    return goalAmountChanged?.call(goalAmountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<SavingPlanEntity> initialOption)? initialized,
    TResult Function(String goalAmountStr)? goalAmountChanged,
    TResult Function(String planNameStr)? planNameChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (goalAmountChanged != null) {
      return goalAmountChanged(goalAmountStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GoalAmountChanged value) goalAmountChanged,
    required TResult Function(_PlanNameChanged value) planNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return goalAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GoalAmountChanged value)? goalAmountChanged,
    TResult? Function(_PlanNameChanged value)? planNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return goalAmountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GoalAmountChanged value)? goalAmountChanged,
    TResult Function(_PlanNameChanged value)? planNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (goalAmountChanged != null) {
      return goalAmountChanged(this);
    }
    return orElse();
  }
}

abstract class _GoalAmountChanged implements SavingPlanFormEvent {
  const factory _GoalAmountChanged(final String goalAmountStr) =
      _$_GoalAmountChanged;

  String get goalAmountStr;
  @JsonKey(ignore: true)
  _$$_GoalAmountChangedCopyWith<_$_GoalAmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PlanNameChangedCopyWith<$Res> {
  factory _$$_PlanNameChangedCopyWith(
          _$_PlanNameChanged value, $Res Function(_$_PlanNameChanged) then) =
      __$$_PlanNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String planNameStr});
}

/// @nodoc
class __$$_PlanNameChangedCopyWithImpl<$Res>
    extends _$SavingPlanFormEventCopyWithImpl<$Res, _$_PlanNameChanged>
    implements _$$_PlanNameChangedCopyWith<$Res> {
  __$$_PlanNameChangedCopyWithImpl(
      _$_PlanNameChanged _value, $Res Function(_$_PlanNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planNameStr = null,
  }) {
    return _then(_$_PlanNameChanged(
      null == planNameStr
          ? _value.planNameStr
          : planNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlanNameChanged implements _PlanNameChanged {
  const _$_PlanNameChanged(this.planNameStr);

  @override
  final String planNameStr;

  @override
  String toString() {
    return 'SavingPlanFormEvent.planNameChanged(planNameStr: $planNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanNameChanged &&
            (identical(other.planNameStr, planNameStr) ||
                other.planNameStr == planNameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, planNameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlanNameChangedCopyWith<_$_PlanNameChanged> get copyWith =>
      __$$_PlanNameChangedCopyWithImpl<_$_PlanNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<SavingPlanEntity> initialOption)
        initialized,
    required TResult Function(String goalAmountStr) goalAmountChanged,
    required TResult Function(String planNameStr) planNameChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function() saved,
  }) {
    return planNameChanged(planNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<SavingPlanEntity> initialOption)? initialized,
    TResult? Function(String goalAmountStr)? goalAmountChanged,
    TResult? Function(String planNameStr)? planNameChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function()? saved,
  }) {
    return planNameChanged?.call(planNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<SavingPlanEntity> initialOption)? initialized,
    TResult Function(String goalAmountStr)? goalAmountChanged,
    TResult Function(String planNameStr)? planNameChanged,
    TResult Function(DateTime dateTime)? dateChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (planNameChanged != null) {
      return planNameChanged(planNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_GoalAmountChanged value) goalAmountChanged,
    required TResult Function(_PlanNameChanged value) planNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return planNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GoalAmountChanged value)? goalAmountChanged,
    TResult? Function(_PlanNameChanged value)? planNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return planNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GoalAmountChanged value)? goalAmountChanged,
    TResult Function(_PlanNameChanged value)? planNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (planNameChanged != null) {
      return planNameChanged(this);
    }
    return orElse();
  }
}

abstract class _PlanNameChanged implements SavingPlanFormEvent {
  const factory _PlanNameChanged(final String planNameStr) = _$_PlanNameChanged;

  String get planNameStr;
  @JsonKey(ignore: true)
  _$$_PlanNameChangedCopyWith<_$_PlanNameChanged> get copyWith =>
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
    extends _$SavingPlanFormEventCopyWithImpl<$Res, _$_DateChanged>
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
    return 'SavingPlanFormEvent.dateChanged(dateTime: $dateTime)';
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
    required TResult Function(Option<SavingPlanEntity> initialOption)
        initialized,
    required TResult Function(String goalAmountStr) goalAmountChanged,
    required TResult Function(String planNameStr) planNameChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function() saved,
  }) {
    return dateChanged(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<SavingPlanEntity> initialOption)? initialized,
    TResult? Function(String goalAmountStr)? goalAmountChanged,
    TResult? Function(String planNameStr)? planNameChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function()? saved,
  }) {
    return dateChanged?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<SavingPlanEntity> initialOption)? initialized,
    TResult Function(String goalAmountStr)? goalAmountChanged,
    TResult Function(String planNameStr)? planNameChanged,
    TResult Function(DateTime dateTime)? dateChanged,
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
    required TResult Function(_GoalAmountChanged value) goalAmountChanged,
    required TResult Function(_PlanNameChanged value) planNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GoalAmountChanged value)? goalAmountChanged,
    TResult? Function(_PlanNameChanged value)? planNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GoalAmountChanged value)? goalAmountChanged,
    TResult Function(_PlanNameChanged value)? planNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements SavingPlanFormEvent {
  const factory _DateChanged(final DateTime dateTime) = _$_DateChanged;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$_DateChangedCopyWith<_$_DateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$SavingPlanFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'SavingPlanFormEvent.saved()';
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
    required TResult Function(Option<SavingPlanEntity> initialOption)
        initialized,
    required TResult Function(String goalAmountStr) goalAmountChanged,
    required TResult Function(String planNameStr) planNameChanged,
    required TResult Function(DateTime dateTime) dateChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<SavingPlanEntity> initialOption)? initialized,
    TResult? Function(String goalAmountStr)? goalAmountChanged,
    TResult? Function(String planNameStr)? planNameChanged,
    TResult? Function(DateTime dateTime)? dateChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<SavingPlanEntity> initialOption)? initialized,
    TResult Function(String goalAmountStr)? goalAmountChanged,
    TResult Function(String planNameStr)? planNameChanged,
    TResult Function(DateTime dateTime)? dateChanged,
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
    required TResult Function(_GoalAmountChanged value) goalAmountChanged,
    required TResult Function(_PlanNameChanged value) planNameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_GoalAmountChanged value)? goalAmountChanged,
    TResult? Function(_PlanNameChanged value)? planNameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_GoalAmountChanged value)? goalAmountChanged,
    TResult Function(_PlanNameChanged value)? planNameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements SavingPlanFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$SavingPlanFormState {
  SavingPlanEntity get savingPlanEntity => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSucessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavingPlanFormStateCopyWith<SavingPlanFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavingPlanFormStateCopyWith<$Res> {
  factory $SavingPlanFormStateCopyWith(
          SavingPlanFormState value, $Res Function(SavingPlanFormState) then) =
      _$SavingPlanFormStateCopyWithImpl<$Res, SavingPlanFormState>;
  @useResult
  $Res call(
      {SavingPlanEntity savingPlanEntity,
      bool isEditing,
      bool isSaving,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption});

  $SavingPlanEntityCopyWith<$Res> get savingPlanEntity;
}

/// @nodoc
class _$SavingPlanFormStateCopyWithImpl<$Res, $Val extends SavingPlanFormState>
    implements $SavingPlanFormStateCopyWith<$Res> {
  _$SavingPlanFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savingPlanEntity = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_value.copyWith(
      savingPlanEntity: null == savingPlanEntity
          ? _value.savingPlanEntity
          : savingPlanEntity // ignore: cast_nullable_to_non_nullable
              as SavingPlanEntity,
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
  $SavingPlanEntityCopyWith<$Res> get savingPlanEntity {
    return $SavingPlanEntityCopyWith<$Res>(_value.savingPlanEntity, (value) {
      return _then(_value.copyWith(savingPlanEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SavingPlanFormStateCopyWith<$Res>
    implements $SavingPlanFormStateCopyWith<$Res> {
  factory _$$_SavingPlanFormStateCopyWith(_$_SavingPlanFormState value,
          $Res Function(_$_SavingPlanFormState) then) =
      __$$_SavingPlanFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SavingPlanEntity savingPlanEntity,
      bool isEditing,
      bool isSaving,
      Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption});

  @override
  $SavingPlanEntityCopyWith<$Res> get savingPlanEntity;
}

/// @nodoc
class __$$_SavingPlanFormStateCopyWithImpl<$Res>
    extends _$SavingPlanFormStateCopyWithImpl<$Res, _$_SavingPlanFormState>
    implements _$$_SavingPlanFormStateCopyWith<$Res> {
  __$$_SavingPlanFormStateCopyWithImpl(_$_SavingPlanFormState _value,
      $Res Function(_$_SavingPlanFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savingPlanEntity = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_$_SavingPlanFormState(
      savingPlanEntity: null == savingPlanEntity
          ? _value.savingPlanEntity
          : savingPlanEntity // ignore: cast_nullable_to_non_nullable
              as SavingPlanEntity,
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

class _$_SavingPlanFormState implements _SavingPlanFormState {
  const _$_SavingPlanFormState(
      {required this.savingPlanEntity,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSucessOption});

  @override
  final SavingPlanEntity savingPlanEntity;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<FirestoreFailure, Unit>> saveFailureOrSucessOption;

  @override
  String toString() {
    return 'SavingPlanFormState(savingPlanEntity: $savingPlanEntity, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSucessOption: $saveFailureOrSucessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavingPlanFormState &&
            (identical(other.savingPlanEntity, savingPlanEntity) ||
                other.savingPlanEntity == savingPlanEntity) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSucessOption,
                    saveFailureOrSucessOption) ||
                other.saveFailureOrSucessOption == saveFailureOrSucessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, savingPlanEntity, isEditing,
      isSaving, saveFailureOrSucessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavingPlanFormStateCopyWith<_$_SavingPlanFormState> get copyWith =>
      __$$_SavingPlanFormStateCopyWithImpl<_$_SavingPlanFormState>(
          this, _$identity);
}

abstract class _SavingPlanFormState implements SavingPlanFormState {
  const factory _SavingPlanFormState(
      {required final SavingPlanEntity savingPlanEntity,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<FirestoreFailure, Unit>>
          saveFailureOrSucessOption}) = _$_SavingPlanFormState;

  @override
  SavingPlanEntity get savingPlanEntity;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<FirestoreFailure, Unit>> get saveFailureOrSucessOption;
  @override
  @JsonKey(ignore: true)
  _$$_SavingPlanFormStateCopyWith<_$_SavingPlanFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
