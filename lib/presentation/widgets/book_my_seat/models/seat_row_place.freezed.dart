// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_row_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeatRowPlace {
  String get rowPlaceLabel => throw _privateConstructorUsedError;
  List<SeatPlace> get seatPlaces => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatRowPlaceCopyWith<SeatRowPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatRowPlaceCopyWith<$Res> {
  factory $SeatRowPlaceCopyWith(
          SeatRowPlace value, $Res Function(SeatRowPlace) then) =
      _$SeatRowPlaceCopyWithImpl<$Res, SeatRowPlace>;
  @useResult
  $Res call({String rowPlaceLabel, List<SeatPlace> seatPlaces});
}

/// @nodoc
class _$SeatRowPlaceCopyWithImpl<$Res, $Val extends SeatRowPlace>
    implements $SeatRowPlaceCopyWith<$Res> {
  _$SeatRowPlaceCopyWithImpl(this._value, this._then);

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
              as List<SeatPlace>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatRowPlaceImplCopyWith<$Res>
    implements $SeatRowPlaceCopyWith<$Res> {
  factory _$$SeatRowPlaceImplCopyWith(
          _$SeatRowPlaceImpl value, $Res Function(_$SeatRowPlaceImpl) then) =
      __$$SeatRowPlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rowPlaceLabel, List<SeatPlace> seatPlaces});
}

/// @nodoc
class __$$SeatRowPlaceImplCopyWithImpl<$Res>
    extends _$SeatRowPlaceCopyWithImpl<$Res, _$SeatRowPlaceImpl>
    implements _$$SeatRowPlaceImplCopyWith<$Res> {
  __$$SeatRowPlaceImplCopyWithImpl(
      _$SeatRowPlaceImpl _value, $Res Function(_$SeatRowPlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowPlaceLabel = null,
    Object? seatPlaces = null,
  }) {
    return _then(_$SeatRowPlaceImpl(
      rowPlaceLabel: null == rowPlaceLabel
          ? _value.rowPlaceLabel
          : rowPlaceLabel // ignore: cast_nullable_to_non_nullable
              as String,
      seatPlaces: null == seatPlaces
          ? _value._seatPlaces
          : seatPlaces // ignore: cast_nullable_to_non_nullable
              as List<SeatPlace>,
    ));
  }
}

/// @nodoc

class _$SeatRowPlaceImpl extends _SeatRowPlace {
  const _$SeatRowPlaceImpl(
      {required this.rowPlaceLabel, required final List<SeatPlace> seatPlaces})
      : _seatPlaces = seatPlaces,
        super._();

  @override
  final String rowPlaceLabel;
  final List<SeatPlace> _seatPlaces;
  @override
  List<SeatPlace> get seatPlaces {
    if (_seatPlaces is EqualUnmodifiableListView) return _seatPlaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seatPlaces);
  }

  @override
  String toString() {
    return 'SeatRowPlace(rowPlaceLabel: $rowPlaceLabel, seatPlaces: $seatPlaces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatRowPlaceImpl &&
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
  _$$SeatRowPlaceImplCopyWith<_$SeatRowPlaceImpl> get copyWith =>
      __$$SeatRowPlaceImplCopyWithImpl<_$SeatRowPlaceImpl>(this, _$identity);
}

abstract class _SeatRowPlace extends SeatRowPlace {
  const factory _SeatRowPlace(
      {required final String rowPlaceLabel,
      required final List<SeatPlace> seatPlaces}) = _$SeatRowPlaceImpl;
  const _SeatRowPlace._() : super._();

  @override
  String get rowPlaceLabel;
  @override
  List<SeatPlace> get seatPlaces;
  @override
  @JsonKey(ignore: true)
  _$$SeatRowPlaceImplCopyWith<_$SeatRowPlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
