// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketDto _$TicketDtoFromJson(Map<String, dynamic> json) {
  return _TicketDto.fromJson(json);
}

/// @nodoc
mixin _$TicketDto {
  String get id => throw _privateConstructorUsedError;
  TicketType get type => throw _privateConstructorUsedError;
  int get placeNumber => throw _privateConstructorUsedError;
  int get rowNumber => throw _privateConstructorUsedError;
  int get branchIndex => throw _privateConstructorUsedError;
  int get branchType => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketDtoCopyWith<TicketDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketDtoCopyWith<$Res> {
  factory $TicketDtoCopyWith(TicketDto value, $Res Function(TicketDto) then) =
      _$TicketDtoCopyWithImpl<$Res, TicketDto>;
  @useResult
  $Res call(
      {String id,
      TicketType type,
      int placeNumber,
      int rowNumber,
      int branchIndex,
      int branchType,
      int index,
      double price});
}

/// @nodoc
class _$TicketDtoCopyWithImpl<$Res, $Val extends TicketDto>
    implements $TicketDtoCopyWith<$Res> {
  _$TicketDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? placeNumber = null,
    Object? rowNumber = null,
    Object? branchIndex = null,
    Object? branchType = null,
    Object? index = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TicketType,
      placeNumber: null == placeNumber
          ? _value.placeNumber
          : placeNumber // ignore: cast_nullable_to_non_nullable
              as int,
      rowNumber: null == rowNumber
          ? _value.rowNumber
          : rowNumber // ignore: cast_nullable_to_non_nullable
              as int,
      branchIndex: null == branchIndex
          ? _value.branchIndex
          : branchIndex // ignore: cast_nullable_to_non_nullable
              as int,
      branchType: null == branchType
          ? _value.branchType
          : branchType // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketDtoImplCopyWith<$Res>
    implements $TicketDtoCopyWith<$Res> {
  factory _$$TicketDtoImplCopyWith(
          _$TicketDtoImpl value, $Res Function(_$TicketDtoImpl) then) =
      __$$TicketDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      TicketType type,
      int placeNumber,
      int rowNumber,
      int branchIndex,
      int branchType,
      int index,
      double price});
}

/// @nodoc
class __$$TicketDtoImplCopyWithImpl<$Res>
    extends _$TicketDtoCopyWithImpl<$Res, _$TicketDtoImpl>
    implements _$$TicketDtoImplCopyWith<$Res> {
  __$$TicketDtoImplCopyWithImpl(
      _$TicketDtoImpl _value, $Res Function(_$TicketDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? placeNumber = null,
    Object? rowNumber = null,
    Object? branchIndex = null,
    Object? branchType = null,
    Object? index = null,
    Object? price = null,
  }) {
    return _then(_$TicketDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TicketType,
      placeNumber: null == placeNumber
          ? _value.placeNumber
          : placeNumber // ignore: cast_nullable_to_non_nullable
              as int,
      rowNumber: null == rowNumber
          ? _value.rowNumber
          : rowNumber // ignore: cast_nullable_to_non_nullable
              as int,
      branchIndex: null == branchIndex
          ? _value.branchIndex
          : branchIndex // ignore: cast_nullable_to_non_nullable
              as int,
      branchType: null == branchType
          ? _value.branchType
          : branchType // ignore: cast_nullable_to_non_nullable
              as int,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketDtoImpl extends _TicketDto {
  const _$TicketDtoImpl(
      {required this.id,
      required this.type,
      required this.placeNumber,
      required this.rowNumber,
      required this.branchIndex,
      required this.branchType,
      required this.index,
      required this.price})
      : super._();

  factory _$TicketDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketDtoImplFromJson(json);

  @override
  final String id;
  @override
  final TicketType type;
  @override
  final int placeNumber;
  @override
  final int rowNumber;
  @override
  final int branchIndex;
  @override
  final int branchType;
  @override
  final int index;
  @override
  final double price;

  @override
  String toString() {
    return 'TicketDto(id: $id, type: $type, placeNumber: $placeNumber, rowNumber: $rowNumber, branchIndex: $branchIndex, branchType: $branchType, index: $index, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.placeNumber, placeNumber) ||
                other.placeNumber == placeNumber) &&
            (identical(other.rowNumber, rowNumber) ||
                other.rowNumber == rowNumber) &&
            (identical(other.branchIndex, branchIndex) ||
                other.branchIndex == branchIndex) &&
            (identical(other.branchType, branchType) ||
                other.branchType == branchType) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, placeNumber, rowNumber,
      branchIndex, branchType, index, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketDtoImplCopyWith<_$TicketDtoImpl> get copyWith =>
      __$$TicketDtoImplCopyWithImpl<_$TicketDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketDtoImplToJson(
      this,
    );
  }
}

abstract class _TicketDto extends TicketDto {
  const factory _TicketDto(
      {required final String id,
      required final TicketType type,
      required final int placeNumber,
      required final int rowNumber,
      required final int branchIndex,
      required final int branchType,
      required final int index,
      required final double price}) = _$TicketDtoImpl;
  const _TicketDto._() : super._();

  factory _TicketDto.fromJson(Map<String, dynamic> json) =
      _$TicketDtoImpl.fromJson;

  @override
  String get id;
  @override
  TicketType get type;
  @override
  int get placeNumber;
  @override
  int get rowNumber;
  @override
  int get branchIndex;
  @override
  int get branchType;
  @override
  int get index;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$TicketDtoImplCopyWith<_$TicketDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}