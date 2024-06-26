// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_row_place_v2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SeatRowPlaceV2 {
  String get rowPlaceLabel => throw _privateConstructorUsedError;
  List<SeatPlaceV2> get seatPlaces => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatRowPlaceV2CopyWith<SeatRowPlaceV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatRowPlaceV2CopyWith<$Res> {
  factory $SeatRowPlaceV2CopyWith(
          SeatRowPlaceV2 value, $Res Function(SeatRowPlaceV2) then) =
      _$SeatRowPlaceV2CopyWithImpl<$Res, SeatRowPlaceV2>;
  @useResult
  $Res call({String rowPlaceLabel, List<SeatPlaceV2> seatPlaces});
}

/// @nodoc
class _$SeatRowPlaceV2CopyWithImpl<$Res, $Val extends SeatRowPlaceV2>
    implements $SeatRowPlaceV2CopyWith<$Res> {
  _$SeatRowPlaceV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowPlaceLabel = null,
    Object? seatPlaces = null,
  }) {
    return _then(_value.copyWith(
      rowPlaceLabel: null == rowPlaceLabel
          ? _value.rowPlaceLabel
          : rowPlaceLabel // ignore: cast_nullable_to_non_nullable
              as String,
      seatPlaces: null == seatPlaces
          ? _value.seatPlaces
          : seatPlaces // ignore: cast_nullable_to_non_nullable
              as List<SeatPlaceV2>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatRowPlaceV2ImplCopyWith<$Res>
    implements $SeatRowPlaceV2CopyWith<$Res> {
  factory _$$SeatRowPlaceV2ImplCopyWith(_$SeatRowPlaceV2Impl value,
          $Res Function(_$SeatRowPlaceV2Impl) then) =
      __$$SeatRowPlaceV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rowPlaceLabel, List<SeatPlaceV2> seatPlaces});
}

/// @nodoc
class __$$SeatRowPlaceV2ImplCopyWithImpl<$Res>
    extends _$SeatRowPlaceV2CopyWithImpl<$Res, _$SeatRowPlaceV2Impl>
    implements _$$SeatRowPlaceV2ImplCopyWith<$Res> {
  __$$SeatRowPlaceV2ImplCopyWithImpl(
      _$SeatRowPlaceV2Impl _value, $Res Function(_$SeatRowPlaceV2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowPlaceLabel = null,
    Object? seatPlaces = null,
  }) {
    return _then(_$SeatRowPlaceV2Impl(
      rowPlaceLabel: null == rowPlaceLabel
          ? _value.rowPlaceLabel
          : rowPlaceLabel // ignore: cast_nullable_to_non_nullable
              as String,
      seatPlaces: null == seatPlaces
          ? _value._seatPlaces
          : seatPlaces // ignore: cast_nullable_to_non_nullable
              as List<SeatPlaceV2>,
    ));
  }
}

/// @nodoc

class _$SeatRowPlaceV2Impl extends _SeatRowPlaceV2 {
  const _$SeatRowPlaceV2Impl(
      {required this.rowPlaceLabel,
      required final List<SeatPlaceV2> seatPlaces})
      : _seatPlaces = seatPlaces,
        super._();

  @override
  final String rowPlaceLabel;
  final List<SeatPlaceV2> _seatPlaces;
  @override
  List<SeatPlaceV2> get seatPlaces {
    if (_seatPlaces is EqualUnmodifiableListView) return _seatPlaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seatPlaces);
  }

  @override
  String toString() {
    return 'SeatRowPlaceV2(rowPlaceLabel: $rowPlaceLabel, seatPlaces: $seatPlaces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatRowPlaceV2Impl &&
            (identical(other.rowPlaceLabel, rowPlaceLabel) ||
                other.rowPlaceLabel == rowPlaceLabel) &&
            const DeepCollectionEquality()
                .equals(other._seatPlaces, _seatPlaces));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rowPlaceLabel,
      const DeepCollectionEquality().hash(_seatPlaces));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatRowPlaceV2ImplCopyWith<_$SeatRowPlaceV2Impl> get copyWith =>
      __$$SeatRowPlaceV2ImplCopyWithImpl<_$SeatRowPlaceV2Impl>(
          this, _$identity);
}

abstract class _SeatRowPlaceV2 extends SeatRowPlaceV2 {
  const factory _SeatRowPlaceV2(
      {required final String rowPlaceLabel,
      required final List<SeatPlaceV2> seatPlaces}) = _$SeatRowPlaceV2Impl;
  const _SeatRowPlaceV2._() : super._();

  @override
  String get rowPlaceLabel;
  @override
  List<SeatPlaceV2> get seatPlaces;
  @override
  @JsonKey(ignore: true)
  _$$SeatRowPlaceV2ImplCopyWith<_$SeatRowPlaceV2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
