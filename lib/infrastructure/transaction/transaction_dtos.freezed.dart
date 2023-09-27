// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDto _$TransactionDtoFromJson(Map<String, dynamic> json) {
  return _TransactionDto.fromJson(json);
}

/// @nodoc
mixin _$TransactionDto {
  @JsonKey(includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get purpose => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  TransactionType get type => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDtoCopyWith<TransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDtoCopyWith<$Res> {
  factory $TransactionDtoCopyWith(
          TransactionDto value, $Res Function(TransactionDto) then) =
      _$TransactionDtoCopyWithImpl<$Res, TransactionDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false) String? id,
      String amount,
      String purpose,
      DateTime date,
      TransactionType type,
      String accountName});
}

/// @nodoc
class _$TransactionDtoCopyWithImpl<$Res, $Val extends TransactionDto>
    implements $TransactionDtoCopyWith<$Res> {
  _$TransactionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = null,
    Object? purpose = null,
    Object? date = null,
    Object? type = null,
    Object? accountName = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionDtoCopyWith<$Res>
    implements $TransactionDtoCopyWith<$Res> {
  factory _$$_TransactionDtoCopyWith(
          _$_TransactionDto value, $Res Function(_$_TransactionDto) then) =
      __$$_TransactionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false) String? id,
      String amount,
      String purpose,
      DateTime date,
      TransactionType type,
      String accountName});
}

/// @nodoc
class __$$_TransactionDtoCopyWithImpl<$Res>
    extends _$TransactionDtoCopyWithImpl<$Res, _$_TransactionDto>
    implements _$$_TransactionDtoCopyWith<$Res> {
  __$$_TransactionDtoCopyWithImpl(
      _$_TransactionDto _value, $Res Function(_$_TransactionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = null,
    Object? purpose = null,
    Object? date = null,
    Object? type = null,
    Object? accountName = null,
  }) {
    return _then(_$_TransactionDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionDto extends _TransactionDto {
  const _$_TransactionDto(
      {@JsonKey(includeFromJson: false) this.id,
      required this.amount,
      required this.purpose,
      required this.date,
      required this.type,
      required this.accountName})
      : super._();

  factory _$_TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionDtoFromJson(json);

  @override
  @JsonKey(includeFromJson: false)
  final String? id;
  @override
  final String amount;
  @override
  final String purpose;
  @override
  final DateTime date;
  @override
  final TransactionType type;
  @override
  final String accountName;

  @override
  String toString() {
    return 'TransactionDto(id: $id, amount: $amount, purpose: $purpose, date: $date, type: $type, accountName: $accountName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, purpose, date, type, accountName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionDtoCopyWith<_$_TransactionDto> get copyWith =>
      __$$_TransactionDtoCopyWithImpl<_$_TransactionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionDtoToJson(
      this,
    );
  }
}

abstract class _TransactionDto extends TransactionDto {
  const factory _TransactionDto(
      {@JsonKey(includeFromJson: false) final String? id,
      required final String amount,
      required final String purpose,
      required final DateTime date,
      required final TransactionType type,
      required final String accountName}) = _$_TransactionDto;
  const _TransactionDto._() : super._();

  factory _TransactionDto.fromJson(Map<String, dynamic> json) =
      _$_TransactionDto.fromJson;

  @override
  @JsonKey(includeFromJson: false)
  String? get id;
  @override
  String get amount;
  @override
  String get purpose;
  @override
  DateTime get date;
  @override
  TransactionType get type;
  @override
  String get accountName;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionDtoCopyWith<_$_TransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
