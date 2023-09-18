// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saving_plan_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavingPlanDto _$SavingPlanDtoFromJson(Map<String, dynamic> json) {
  return _SavingPlanDto.fromJson(json);
}

/// @nodoc
mixin _$SavingPlanDto {
  @JsonKey(includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get planName => throw _privateConstructorUsedError;
  String get goalAmount => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavingPlanDtoCopyWith<SavingPlanDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavingPlanDtoCopyWith<$Res> {
  factory $SavingPlanDtoCopyWith(
          SavingPlanDto value, $Res Function(SavingPlanDto) then) =
      _$SavingPlanDtoCopyWithImpl<$Res, SavingPlanDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false) String? id,
      String planName,
      String goalAmount,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$SavingPlanDtoCopyWithImpl<$Res, $Val extends SavingPlanDto>
    implements $SavingPlanDtoCopyWith<$Res> {
  _$SavingPlanDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? planName = null,
    Object? goalAmount = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      planName: null == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      goalAmount: null == goalAmount
          ? _value.goalAmount
          : goalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavingPlanDtoCopyWith<$Res>
    implements $SavingPlanDtoCopyWith<$Res> {
  factory _$$_SavingPlanDtoCopyWith(
          _$_SavingPlanDto value, $Res Function(_$_SavingPlanDto) then) =
      __$$_SavingPlanDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false) String? id,
      String planName,
      String goalAmount,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$$_SavingPlanDtoCopyWithImpl<$Res>
    extends _$SavingPlanDtoCopyWithImpl<$Res, _$_SavingPlanDto>
    implements _$$_SavingPlanDtoCopyWith<$Res> {
  __$$_SavingPlanDtoCopyWithImpl(
      _$_SavingPlanDto _value, $Res Function(_$_SavingPlanDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? planName = null,
    Object? goalAmount = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_$_SavingPlanDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      planName: null == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      goalAmount: null == goalAmount
          ? _value.goalAmount
          : goalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavingPlanDto extends _SavingPlanDto {
  const _$_SavingPlanDto(
      {@JsonKey(includeFromJson: false) this.id,
      required this.planName,
      required this.goalAmount,
      @ServerTimestampConverter() required this.serverTimeStamp})
      : super._();

  factory _$_SavingPlanDto.fromJson(Map<String, dynamic> json) =>
      _$$_SavingPlanDtoFromJson(json);

  @override
  @JsonKey(includeFromJson: false)
  final String? id;
  @override
  final String planName;
  @override
  final String goalAmount;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'SavingPlanDto(id: $id, planName: $planName, goalAmount: $goalAmount, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavingPlanDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.planName, planName) ||
                other.planName == planName) &&
            (identical(other.goalAmount, goalAmount) ||
                other.goalAmount == goalAmount) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                other.serverTimeStamp == serverTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, planName, goalAmount, serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavingPlanDtoCopyWith<_$_SavingPlanDto> get copyWith =>
      __$$_SavingPlanDtoCopyWithImpl<_$_SavingPlanDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavingPlanDtoToJson(
      this,
    );
  }
}

abstract class _SavingPlanDto extends SavingPlanDto {
  const factory _SavingPlanDto(
      {@JsonKey(includeFromJson: false) final String? id,
      required final String planName,
      required final String goalAmount,
      @ServerTimestampConverter()
      required final FieldValue serverTimeStamp}) = _$_SavingPlanDto;
  const _SavingPlanDto._() : super._();

  factory _SavingPlanDto.fromJson(Map<String, dynamic> json) =
      _$_SavingPlanDto.fromJson;

  @override
  @JsonKey(includeFromJson: false)
  String? get id;
  @override
  String get planName;
  @override
  String get goalAmount;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_SavingPlanDtoCopyWith<_$_SavingPlanDto> get copyWith =>
      throw _privateConstructorUsedError;
}
