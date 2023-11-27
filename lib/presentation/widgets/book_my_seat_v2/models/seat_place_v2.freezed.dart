// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_place_v2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeatPlaceV2 {
  /// currentIndex row index *can be different fot the same row*
  int get currentRowIndex => throw _privateConstructorUsedError;
  String get rowLabel => throw _privateConstructorUsedError;
  PlaceStateV2 get seatState => throw _privateConstructorUsedError;
  int get seatPlace => throw _privateConstructorUsedError;
  String? get ticketId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatPlaceV2CopyWith<SeatPlaceV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatPlaceV2CopyWith<$Res> {
  factory $SeatPlaceV2CopyWith(
          SeatPlaceV2 value, $Res Function(SeatPlaceV2) then) =
      _$SeatPlaceV2CopyWithImpl<$Res, SeatPlaceV2>;
  @useResult
  $Res call(
      {int currentRowIndex,
      String rowLabel,
      PlaceStateV2 seatState,
      int seatPlace,
      String? ticketId});
}

/// @nodoc
class _$SeatPlaceV2CopyWithImpl<$Res, $Val extends SeatPlaceV2>
    implements $SeatPlaceV2CopyWith<$Res> {
  _$SeatPlaceV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRowIndex = null,
    Object? rowLabel = null,
    Object? seatState = null,
    Object? seatPlace = null,
    Object? ticketId = freezed,
  }) {
    return _then(_value.copyWith(
      currentRowIndex: null == currentRowIndex
          ? _value.currentRowIndex
          : currentRowIndex // ignore: cast_nullable_to_non_nullable
              as int,
      rowLabel: null == rowLabel
          ? _value.rowLabel
          : rowLabel // ignore: cast_nullable_to_non_nullable
              as String,
      seatState: null == seatState
          ? _value.seatState
          : seatState // ignore: cast_nullable_to_non_nullable
              as PlaceStateV2,
      seatPlace: null == seatPlace
          ? _value.seatPlace
          : seatPlace // ignore: cast_nullable_to_non_nullable
              as int,
      ticketId: freezed == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatPlaceV2ImplCopyWith<$Res>
    implements $SeatPlaceV2CopyWith<$Res> {
  factory _$$SeatPlaceV2ImplCopyWith(
          _$SeatPlaceV2Impl value, $Res Function(_$SeatPlaceV2Impl) then) =
      __$$SeatPlaceV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentRowIndex,
      String rowLabel,
      PlaceStateV2 seatState,
      int seatPlace,
      String? ticketId});
}

/// @nodoc
class __$$SeatPlaceV2ImplCopyWithImpl<$Res>
    extends _$SeatPlaceV2CopyWithImpl<$Res, _$SeatPlaceV2Impl>
    implements _$$SeatPlaceV2ImplCopyWith<$Res> {
  __$$SeatPlaceV2ImplCopyWithImpl(
      _$SeatPlaceV2Impl _value, $Res Function(_$SeatPlaceV2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRowIndex = null,
    Object? rowLabel = null,
    Object? seatState = null,
    Object? seatPlace = null,
    Object? ticketId = freezed,
  }) {
    return _then(_$SeatPlaceV2Impl(
      currentRowIndex: null == currentRowIndex
          ? _value.currentRowIndex
          : currentRowIndex // ignore: cast_nullable_to_non_nullable
              as int,
      rowLabel: null == rowLabel
          ? _value.rowLabel
          : rowLabel // ignore: cast_nullable_to_non_nullable
              as String,
      seatState: null == seatState
          ? _value.seatState
          : seatState // ignore: cast_nullable_to_non_nullable
              as PlaceStateV2,
      seatPlace: null == seatPlace
          ? _value.seatPlace
          : seatPlace // ignore: cast_nullable_to_non_nullable
              as int,
      ticketId: freezed == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SeatPlaceV2Impl extends _SeatPlaceV2 {
  const _$SeatPlaceV2Impl(
      {required this.currentRowIndex,
      required this.rowLabel,
      required this.seatState,
      required this.seatPlace,
      this.ticketId})
      : super._();

  /// currentIndex row index *can be different fot the same row*
  @override
  final int currentRowIndex;
  @override
  final String rowLabel;
  @override
  final PlaceStateV2 seatState;
  @override
  final int seatPlace;
  @override
  final String? ticketId;

  @override
  String toString() {
    return 'SeatPlaceV2(currentRowIndex: $currentRowIndex, rowLabel: $rowLabel, seatState: $seatState, seatPlace: $seatPlace, ticketId: $ticketId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatPlaceV2Impl &&
            (identical(other.currentRowIndex, currentRowIndex) ||
                other.currentRowIndex == currentRowIndex) &&
            (identical(other.rowLabel, rowLabel) ||
                other.rowLabel == rowLabel) &&
            (identical(other.seatState, seatState) ||
                other.seatState == seatState) &&
            (identical(other.seatPlace, seatPlace) ||
                other.seatPlace == seatPlace) &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentRowIndex, rowLabel, seatState, seatPlace, ticketId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatPlaceV2ImplCopyWith<_$SeatPlaceV2Impl> get copyWith =>
      __$$SeatPlaceV2ImplCopyWithImpl<_$SeatPlaceV2Impl>(this, _$identity);
}

abstract class _SeatPlaceV2 extends SeatPlaceV2 {
  const factory _SeatPlaceV2(
      {required final int currentRowIndex,
      required final String rowLabel,
      required final PlaceStateV2 seatState,
      required final int seatPlace,
      final String? ticketId}) = _$SeatPlaceV2Impl;
  const _SeatPlaceV2._() : super._();

  @override

  /// currentIndex row index *can be different fot the same row*
  int get currentRowIndex;
  @override
  String get rowLabel;
  @override
  PlaceStateV2 get seatState;
  @override
  int get seatPlace;
  @override
  String? get ticketId;
  @override
  @JsonKey(ignore: true)
  _$$SeatPlaceV2ImplCopyWith<_$SeatPlaceV2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
