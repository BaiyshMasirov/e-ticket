// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeatPlace {
  SeatState get seatState => throw _privateConstructorUsedError;
  int get seatPlace => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatPlaceCopyWith<SeatPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatPlaceCopyWith<$Res> {
  factory $SeatPlaceCopyWith(SeatPlace value, $Res Function(SeatPlace) then) =
      _$SeatPlaceCopyWithImpl<$Res, SeatPlace>;
  @useResult
  $Res call({SeatState seatState, int seatPlace});
}

/// @nodoc
class _$SeatPlaceCopyWithImpl<$Res, $Val extends SeatPlace>
    implements $SeatPlaceCopyWith<$Res> {
  _$SeatPlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatState = null,
    Object? seatPlace = null,
  }) {
    return _then(_value.copyWith(
      seatState: null == seatState
          ? _value.seatState
          : seatState // ignore: cast_nullable_to_non_nullable
              as SeatState,
      seatPlace: null == seatPlace
          ? _value.seatPlace
          : seatPlace // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatPlaceImplCopyWith<$Res>
    implements $SeatPlaceCopyWith<$Res> {
  factory _$$SeatPlaceImplCopyWith(
          _$SeatPlaceImpl value, $Res Function(_$SeatPlaceImpl) then) =
      __$$SeatPlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SeatState seatState, int seatPlace});
}

/// @nodoc
class __$$SeatPlaceImplCopyWithImpl<$Res>
    extends _$SeatPlaceCopyWithImpl<$Res, _$SeatPlaceImpl>
    implements _$$SeatPlaceImplCopyWith<$Res> {
  __$$SeatPlaceImplCopyWithImpl(
      _$SeatPlaceImpl _value, $Res Function(_$SeatPlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatState = null,
    Object? seatPlace = null,
  }) {
    return _then(_$SeatPlaceImpl(
      seatState: null == seatState
          ? _value.seatState
          : seatState // ignore: cast_nullable_to_non_nullable
              as SeatState,
      seatPlace: null == seatPlace
          ? _value.seatPlace
          : seatPlace // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SeatPlaceImpl extends _SeatPlace {
  const _$SeatPlaceImpl({required this.seatState, required this.seatPlace})
      : super._();

  @override
  final SeatState seatState;
  @override
  final int seatPlace;

  @override
  String toString() {
    return 'SeatPlace(seatState: $seatState, seatPlace: $seatPlace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatPlaceImpl &&
            (identical(other.seatState, seatState) ||
                other.seatState == seatState) &&
            (identical(other.seatPlace, seatPlace) ||
                other.seatPlace == seatPlace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seatState, seatPlace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatPlaceImplCopyWith<_$SeatPlaceImpl> get copyWith =>
      __$$SeatPlaceImplCopyWithImpl<_$SeatPlaceImpl>(this, _$identity);
}

abstract class _SeatPlace extends SeatPlace {
  const factory _SeatPlace(
      {required final SeatState seatState,
      required final int seatPlace}) = _$SeatPlaceImpl;
  const _SeatPlace._() : super._();

  @override
  SeatState get seatState;
  @override
  int get seatPlace;
  @override
  @JsonKey(ignore: true)
  _$$SeatPlaceImplCopyWith<_$SeatPlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
