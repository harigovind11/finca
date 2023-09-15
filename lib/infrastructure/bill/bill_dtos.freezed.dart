// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillDto _$BillDtoFromJson(Map<String, dynamic> json) {
  return _BillDto.fromJson(json);
}

/// @nodoc
mixin _$BillDto {
  @JsonKey(includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get billAmount => throw _privateConstructorUsedError;
  String get billName => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  BillType get billType => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillDtoCopyWith<BillDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillDtoCopyWith<$Res> {
  factory $BillDtoCopyWith(BillDto value, $Res Function(BillDto) then) =
      _$BillDtoCopyWithImpl<$Res, BillDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false) String? id,
      String billAmount,
      String billName,
      DateTime date,
      BillType billType,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$BillDtoCopyWithImpl<$Res, $Val extends BillDto>
    implements $BillDtoCopyWith<$Res> {
  _$BillDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? billAmount = null,
    Object? billName = null,
    Object? date = null,
    Object? billType = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      billAmount: null == billAmount
          ? _value.billAmount
          : billAmount // ignore: cast_nullable_to_non_nullable
              as String,
      billName: null == billName
          ? _value.billName
          : billName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as BillType,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BillDtoCopyWith<$Res> implements $BillDtoCopyWith<$Res> {
  factory _$$_BillDtoCopyWith(
          _$_BillDto value, $Res Function(_$_BillDto) then) =
      __$$_BillDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false) String? id,
      String billAmount,
      String billName,
      DateTime date,
      BillType billType,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$$_BillDtoCopyWithImpl<$Res>
    extends _$BillDtoCopyWithImpl<$Res, _$_BillDto>
    implements _$$_BillDtoCopyWith<$Res> {
  __$$_BillDtoCopyWithImpl(_$_BillDto _value, $Res Function(_$_BillDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? billAmount = null,
    Object? billName = null,
    Object? date = null,
    Object? billType = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_$_BillDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      billAmount: null == billAmount
          ? _value.billAmount
          : billAmount // ignore: cast_nullable_to_non_nullable
              as String,
      billName: null == billName
          ? _value.billName
          : billName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as BillType,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BillDto implements _BillDto {
  const _$_BillDto(
      {@JsonKey(includeFromJson: false) this.id,
      required this.billAmount,
      required this.billName,
      required this.date,
      required this.billType,
      @ServerTimestampConverter() required this.serverTimeStamp});

  factory _$_BillDto.fromJson(Map<String, dynamic> json) =>
      _$$_BillDtoFromJson(json);

  @override
  @JsonKey(includeFromJson: false)
  final String? id;
  @override
  final String billAmount;
  @override
  final String billName;
  @override
  final DateTime date;
  @override
  final BillType billType;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'BillDto(id: $id, billAmount: $billAmount, billName: $billName, date: $date, billType: $billType, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.billAmount, billAmount) ||
                other.billAmount == billAmount) &&
            (identical(other.billName, billName) ||
                other.billName == billName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.billType, billType) ||
                other.billType == billType) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                other.serverTimeStamp == serverTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, billAmount, billName, date, billType, serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillDtoCopyWith<_$_BillDto> get copyWith =>
      __$$_BillDtoCopyWithImpl<_$_BillDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillDtoToJson(
      this,
    );
  }
}

abstract class _BillDto implements BillDto {
  const factory _BillDto(
      {@JsonKey(includeFromJson: false) final String? id,
      required final String billAmount,
      required final String billName,
      required final DateTime date,
      required final BillType billType,
      @ServerTimestampConverter()
      required final FieldValue serverTimeStamp}) = _$_BillDto;

  factory _BillDto.fromJson(Map<String, dynamic> json) = _$_BillDto.fromJson;

  @override
  @JsonKey(includeFromJson: false)
  String? get id;
  @override
  String get billAmount;
  @override
  String get billName;
  @override
  DateTime get date;
  @override
  BillType get billType;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_BillDtoCopyWith<_$_BillDto> get copyWith =>
      throw _privateConstructorUsedError;
}
