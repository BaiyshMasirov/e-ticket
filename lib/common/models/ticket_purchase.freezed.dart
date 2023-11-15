// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_purchase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketPurchase {
  String get id => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketPurchaseCopyWith<TicketPurchase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketPurchaseCopyWith<$Res> {
  factory $TicketPurchaseCopyWith(
          TicketPurchase value, $Res Function(TicketPurchase) then) =
      _$TicketPurchaseCopyWithImpl<$Res, TicketPurchase>;
  @useResult
  $Res call({String id, double price, String label});
}

/// @nodoc
class _$TicketPurchaseCopyWithImpl<$Res, $Val extends TicketPurchase>
    implements $TicketPurchaseCopyWith<$Res> {
  _$TicketPurchaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketPurchaseImplCopyWith<$Res>
    implements $TicketPurchaseCopyWith<$Res> {
  factory _$$TicketPurchaseImplCopyWith(_$TicketPurchaseImpl value,
          $Res Function(_$TicketPurchaseImpl) then) =
      __$$TicketPurchaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double price, String label});
}

/// @nodoc
class __$$TicketPurchaseImplCopyWithImpl<$Res>
    extends _$TicketPurchaseCopyWithImpl<$Res, _$TicketPurchaseImpl>
    implements _$$TicketPurchaseImplCopyWith<$Res> {
  __$$TicketPurchaseImplCopyWithImpl(
      _$TicketPurchaseImpl _value, $Res Function(_$TicketPurchaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? label = null,
  }) {
    return _then(_$TicketPurchaseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TicketPurchaseImpl extends _TicketPurchase {
  const _$TicketPurchaseImpl(
      {required this.id, required this.price, required this.label})
      : super._();

  @override
  final String id;
  @override
  final double price;
  @override
  final String label;

  @override
  String toString() {
    return 'TicketPurchase(id: $id, price: $price, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketPurchaseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, price, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketPurchaseImplCopyWith<_$TicketPurchaseImpl> get copyWith =>
      __$$TicketPurchaseImplCopyWithImpl<_$TicketPurchaseImpl>(
          this, _$identity);
}

abstract class _TicketPurchase extends TicketPurchase {
  const factory _TicketPurchase(
      {required final String id,
      required final double price,
      required final String label}) = _$TicketPurchaseImpl;
  const _TicketPurchase._() : super._();

  @override
  String get id;
  @override
  double get price;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$TicketPurchaseImplCopyWith<_$TicketPurchaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
