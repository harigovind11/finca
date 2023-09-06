// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionCard {
  UniqueId get id => throw _privateConstructorUsedError;
  TransactionAmount get amount => throw _privateConstructorUsedError;
  TransactionPurpose get purpose => throw _privateConstructorUsedError;
  TransactionDate get date => throw _privateConstructorUsedError;
  TransactionType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionCardCopyWith<TransactionCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCardCopyWith<$Res> {
  factory $TransactionCardCopyWith(
          TransactionCard value, $Res Function(TransactionCard) then) =
      _$TransactionCardCopyWithImpl<$Res, TransactionCard>;
  @useResult
  $Res call(
      {UniqueId id,
      TransactionAmount amount,
      TransactionPurpose purpose,
      TransactionDate date,
      TransactionType type});
}

/// @nodoc
class _$TransactionCardCopyWithImpl<$Res, $Val extends TransactionCard>
    implements $TransactionCardCopyWith<$Res> {
  _$TransactionCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? purpose = null,
    Object? date = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as TransactionAmount,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as TransactionPurpose,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as TransactionDate,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionCardCopyWith<$Res>
    implements $TransactionCardCopyWith<$Res> {
  factory _$$_TransactionCardCopyWith(
          _$_TransactionCard value, $Res Function(_$_TransactionCard) then) =
      __$$_TransactionCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      TransactionAmount amount,
      TransactionPurpose purpose,
      TransactionDate date,
      TransactionType type});
}

/// @nodoc
class __$$_TransactionCardCopyWithImpl<$Res>
    extends _$TransactionCardCopyWithImpl<$Res, _$_TransactionCard>
    implements _$$_TransactionCardCopyWith<$Res> {
  __$$_TransactionCardCopyWithImpl(
      _$_TransactionCard _value, $Res Function(_$_TransactionCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? purpose = null,
    Object? date = null,
    Object? type = null,
  }) {
    return _then(_$_TransactionCard(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as TransactionAmount,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as TransactionPurpose,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as TransactionDate,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ));
  }
}

/// @nodoc

class _$_TransactionCard extends _TransactionCard {
  const _$_TransactionCard(
      {required this.id,
      required this.amount,
      required this.purpose,
      required this.date,
      required this.type})
      : super._();

  @override
  final UniqueId id;
  @override
  final TransactionAmount amount;
  @override
  final TransactionPurpose purpose;
  @override
  final TransactionDate date;
  @override
  final TransactionType type;

  @override
  String toString() {
    return 'TransactionCard(id: $id, amount: $amount, purpose: $purpose, date: $date, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionCard &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, amount, purpose, date, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCardCopyWith<_$_TransactionCard> get copyWith =>
      __$$_TransactionCardCopyWithImpl<_$_TransactionCard>(this, _$identity);
}

abstract class _TransactionCard extends TransactionCard {
  const factory _TransactionCard(
      {required final UniqueId id,
      required final TransactionAmount amount,
      required final TransactionPurpose purpose,
      required final TransactionDate date,
      required final TransactionType type}) = _$_TransactionCard;
  const _TransactionCard._() : super._();

  @override
  UniqueId get id;
  @override
  TransactionAmount get amount;
  @override
  TransactionPurpose get purpose;
  @override
  TransactionDate get date;
  @override
  TransactionType get type;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCardCopyWith<_$_TransactionCard> get copyWith =>
      throw _privateConstructorUsedError;
}
