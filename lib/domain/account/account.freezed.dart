// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountEntity {
  UniqueId get id => throw _privateConstructorUsedError;
  AccountName get accountName => throw _privateConstructorUsedError;
  AccountBalance get accountBalance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountEntityCopyWith<AccountEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEntityCopyWith<$Res> {
  factory $AccountEntityCopyWith(
          AccountEntity value, $Res Function(AccountEntity) then) =
      _$AccountEntityCopyWithImpl<$Res, AccountEntity>;
  @useResult
  $Res call(
      {UniqueId id, AccountName accountName, AccountBalance accountBalance});
}

/// @nodoc
class _$AccountEntityCopyWithImpl<$Res, $Val extends AccountEntity>
    implements $AccountEntityCopyWith<$Res> {
  _$AccountEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountName = null,
    Object? accountBalance = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as AccountName,
      accountBalance: null == accountBalance
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as AccountBalance,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountEntityCopyWith<$Res>
    implements $AccountEntityCopyWith<$Res> {
  factory _$$_AccountEntityCopyWith(
          _$_AccountEntity value, $Res Function(_$_AccountEntity) then) =
      __$$_AccountEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id, AccountName accountName, AccountBalance accountBalance});
}

/// @nodoc
class __$$_AccountEntityCopyWithImpl<$Res>
    extends _$AccountEntityCopyWithImpl<$Res, _$_AccountEntity>
    implements _$$_AccountEntityCopyWith<$Res> {
  __$$_AccountEntityCopyWithImpl(
      _$_AccountEntity _value, $Res Function(_$_AccountEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountName = null,
    Object? accountBalance = null,
  }) {
    return _then(_$_AccountEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as AccountName,
      accountBalance: null == accountBalance
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as AccountBalance,
    ));
  }
}

/// @nodoc

class _$_AccountEntity extends _AccountEntity {
  const _$_AccountEntity(
      {required this.id,
      required this.accountName,
      required this.accountBalance})
      : super._();

  @override
  final UniqueId id;
  @override
  final AccountName accountName;
  @override
  final AccountBalance accountBalance;

  @override
  String toString() {
    return 'AccountEntity(id: $id, accountName: $accountName, accountBalance: $accountBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountBalance, accountBalance) ||
                other.accountBalance == accountBalance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, accountName, accountBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountEntityCopyWith<_$_AccountEntity> get copyWith =>
      __$$_AccountEntityCopyWithImpl<_$_AccountEntity>(this, _$identity);
}

abstract class _AccountEntity extends AccountEntity {
  const factory _AccountEntity(
      {required final UniqueId id,
      required final AccountName accountName,
      required final AccountBalance accountBalance}) = _$_AccountEntity;
  const _AccountEntity._() : super._();

  @override
  UniqueId get id;
  @override
  AccountName get accountName;
  @override
  AccountBalance get accountBalance;
  @override
  @JsonKey(ignore: true)
  _$$_AccountEntityCopyWith<_$_AccountEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
