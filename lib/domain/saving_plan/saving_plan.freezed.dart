// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saving_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SavingPlanEntity {
  UniqueId get id => throw _privateConstructorUsedError;
  SavingPlanName get planName => throw _privateConstructorUsedError;
  SavingPlanGoalAmount get goalAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavingPlanEntityCopyWith<SavingPlanEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavingPlanEntityCopyWith<$Res> {
  factory $SavingPlanEntityCopyWith(
          SavingPlanEntity value, $Res Function(SavingPlanEntity) then) =
      _$SavingPlanEntityCopyWithImpl<$Res, SavingPlanEntity>;
  @useResult
  $Res call(
      {UniqueId id, SavingPlanName planName, SavingPlanGoalAmount goalAmount});
}

/// @nodoc
class _$SavingPlanEntityCopyWithImpl<$Res, $Val extends SavingPlanEntity>
    implements $SavingPlanEntityCopyWith<$Res> {
  _$SavingPlanEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? planName = null,
    Object? goalAmount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      planName: null == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as SavingPlanName,
      goalAmount: null == goalAmount
          ? _value.goalAmount
          : goalAmount // ignore: cast_nullable_to_non_nullable
              as SavingPlanGoalAmount,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavingPlanEntityCopyWith<$Res>
    implements $SavingPlanEntityCopyWith<$Res> {
  factory _$$_SavingPlanEntityCopyWith(
          _$_SavingPlanEntity value, $Res Function(_$_SavingPlanEntity) then) =
      __$$_SavingPlanEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id, SavingPlanName planName, SavingPlanGoalAmount goalAmount});
}

/// @nodoc
class __$$_SavingPlanEntityCopyWithImpl<$Res>
    extends _$SavingPlanEntityCopyWithImpl<$Res, _$_SavingPlanEntity>
    implements _$$_SavingPlanEntityCopyWith<$Res> {
  __$$_SavingPlanEntityCopyWithImpl(
      _$_SavingPlanEntity _value, $Res Function(_$_SavingPlanEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? planName = null,
    Object? goalAmount = null,
  }) {
    return _then(_$_SavingPlanEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      planName: null == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as SavingPlanName,
      goalAmount: null == goalAmount
          ? _value.goalAmount
          : goalAmount // ignore: cast_nullable_to_non_nullable
              as SavingPlanGoalAmount,
    ));
  }
}

/// @nodoc

class _$_SavingPlanEntity extends _SavingPlanEntity {
  const _$_SavingPlanEntity(
      {required this.id, required this.planName, required this.goalAmount})
      : super._();

  @override
  final UniqueId id;
  @override
  final SavingPlanName planName;
  @override
  final SavingPlanGoalAmount goalAmount;

  @override
  String toString() {
    return 'SavingPlanEntity(id: $id, planName: $planName, goalAmount: $goalAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavingPlanEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.planName, planName) ||
                other.planName == planName) &&
            (identical(other.goalAmount, goalAmount) ||
                other.goalAmount == goalAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, planName, goalAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavingPlanEntityCopyWith<_$_SavingPlanEntity> get copyWith =>
      __$$_SavingPlanEntityCopyWithImpl<_$_SavingPlanEntity>(this, _$identity);
}

abstract class _SavingPlanEntity extends SavingPlanEntity {
  const factory _SavingPlanEntity(
      {required final UniqueId id,
      required final SavingPlanName planName,
      required final SavingPlanGoalAmount goalAmount}) = _$_SavingPlanEntity;
  const _SavingPlanEntity._() : super._();

  @override
  UniqueId get id;
  @override
  SavingPlanName get planName;
  @override
  SavingPlanGoalAmount get goalAmount;
  @override
  @JsonKey(ignore: true)
  _$$_SavingPlanEntityCopyWith<_$_SavingPlanEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
