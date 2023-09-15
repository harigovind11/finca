// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountDto _$AccountDtoFromJson(Map<String, dynamic> json) {
  return _AccountDto.fromJson(json);
}

/// @nodoc
mixin _$AccountDto {
  @JsonKey(includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;
  String get accountBalance => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountDtoCopyWith<AccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDtoCopyWith<$Res> {
  factory $AccountDtoCopyWith(
          AccountDto value, $Res Function(AccountDto) then) =
      _$AccountDtoCopyWithImpl<$Res, AccountDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false) String? id,
      String accountName,
      String accountBalance,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$AccountDtoCopyWithImpl<$Res, $Val extends AccountDto>
    implements $AccountDtoCopyWith<$Res> {
  _$AccountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accountName = null,
    Object? accountBalance = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountBalance: null == accountBalance
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as String,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountDtoCopyWith<$Res>
    implements $AccountDtoCopyWith<$Res> {
  factory _$$_AccountDtoCopyWith(
          _$_AccountDto value, $Res Function(_$_AccountDto) then) =
      __$$_AccountDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false) String? id,
      String accountName,
      String accountBalance,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$$_AccountDtoCopyWithImpl<$Res>
    extends _$AccountDtoCopyWithImpl<$Res, _$_AccountDto>
    implements _$$_AccountDtoCopyWith<$Res> {
  __$$_AccountDtoCopyWithImpl(
      _$_AccountDto _value, $Res Function(_$_AccountDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accountName = null,
    Object? accountBalance = null,
    Object? serverTimeStamp = null,
  }) {
    return _then(_$_AccountDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountBalance: null == accountBalance
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
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
class _$_AccountDto extends _AccountDto {
  const _$_AccountDto(
      {@JsonKey(includeFromJson: false) this.id,
      required this.accountName,
      required this.accountBalance,
      @ServerTimestampConverter() required this.serverTimeStamp})
      : super._();

  factory _$_AccountDto.fromJson(Map<String, dynamic> json) =>
      _$$_AccountDtoFromJson(json);

  @override
  @JsonKey(includeFromJson: false)
  final String? id;
  @override
  final String accountName;
  @override
  final String accountBalance;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'AccountDto(id: $id, accountName: $accountName, accountBalance: $accountBalance, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountBalance, accountBalance) ||
                other.accountBalance == accountBalance) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                other.serverTimeStamp == serverTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, accountName, accountBalance, serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountDtoCopyWith<_$_AccountDto> get copyWith =>
      __$$_AccountDtoCopyWithImpl<_$_AccountDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountDtoToJson(
      this,
    );
  }
}

abstract class _AccountDto extends AccountDto {
  const factory _AccountDto(
      {@JsonKey(includeFromJson: false) final String? id,
      required final String accountName,
      required final String accountBalance,
      @ServerTimestampConverter()
      required final FieldValue serverTimeStamp}) = _$_AccountDto;
  const _AccountDto._() : super._();

  factory _AccountDto.fromJson(Map<String, dynamic> json) =
      _$_AccountDto.fromJson;

  @override
  @JsonKey(includeFromJson: false)
  String? get id;
  @override
  String get accountName;
  @override
  String get accountBalance;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_AccountDtoCopyWith<_$_AccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}
