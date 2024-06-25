// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_place_secondary_v2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SeatPlaceSecondaryV2 {
  int get branchIndex => throw _privateConstructorUsedError;
  String get rowLabel => throw _privateConstructorUsedError;
  int get currentRowIndex => throw _privateConstructorUsedError;
  int get placeIndex => throw _privateConstructorUsedError;
  int get placeNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatPlaceSecondaryV2CopyWith<SeatPlaceSecondaryV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatPlaceSecondaryV2CopyWith<$Res> {
  factory $SeatPlaceSecondaryV2CopyWith(SeatPlaceSecondaryV2 value,
          $Res Function(SeatPlaceSecondaryV2) then) =
      _$SeatPlaceSecondaryV2CopyWithImpl<$Res, SeatPlaceSecondaryV2>;
  @useResult
  $Res call(
      {int branchIndex,
      String rowLabel,
      int currentRowIndex,
      int placeIndex,
      int placeNumber});
}

/// @nodoc
class _$SeatPlaceSecondaryV2CopyWithImpl<$Res,
        $Val extends SeatPlaceSecondaryV2>
    implements $SeatPlaceSecondaryV2CopyWith<$Res> {
  _$SeatPlaceSecondaryV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchIndex = null,
    Object? rowLabel = null,
    Object? currentRowIndex = null,
    Object? placeIndex = null,
    Object? placeNumber = null,
  }) {
    return _then(_value.copyWith(
      branchIndex: null == branchIndex
          ? _value.branchIndex
          : branchIndex // ignore: cast_nullable_to_non_nullable
              as int,
      rowLabel: null == rowLabel
          ? _value.rowLabel
          : rowLabel // ignore: cast_nullable_to_non_nullable
              as String,
      currentRowIndex: null == currentRowIndex
          ? _value.currentRowIndex
          : currentRowIndex // ignore: cast_nullable_to_non_nullable
              as int,
      placeIndex: null == placeIndex
          ? _value.placeIndex
          : placeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      placeNumber: null == placeNumber
          ? _value.placeNumber
          : placeNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatPlaceSecondaryV2ImplCopyWith<$Res>
    implements $SeatPlaceSecondaryV2CopyWith<$Res> {
  factory _$$SeatPlaceSecondaryV2ImplCopyWith(_$SeatPlaceSecondaryV2Impl value,
          $Res Function(_$SeatPlaceSecondaryV2Impl) then) =
      __$$SeatPlaceSecondaryV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int branchIndex,
      String rowLabel,
      int currentRowIndex,
      int placeIndex,
      int placeNumber});
}

/// @nodoc
class __$$SeatPlaceSecondaryV2ImplCopyWithImpl<$Res>
    extends _$SeatPlaceSecondaryV2CopyWithImpl<$Res, _$SeatPlaceSecondaryV2Impl>
    implements _$$SeatPlaceSecondaryV2ImplCopyWith<$Res> {
  __$$SeatPlaceSecondaryV2ImplCopyWithImpl(_$SeatPlaceSecondaryV2Impl _value,
      $Res Function(_$SeatPlaceSecondaryV2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchIndex = null,
    Object? rowLabel = null,
    Object? currentRowIndex = null,
    Object? placeIndex = null,
    Object? placeNumber = null,
  }) {
    return _then(_$SeatPlaceSecondaryV2Impl(
      branchIndex: null == branchIndex
          ? _value.branchIndex
          : branchIndex // ignore: cast_nullable_to_non_nullable
              as int,
      rowLabel: null == rowLabel
          ? _value.rowLabel
          : rowLabel // ignore: cast_nullable_to_non_nullable
              as String,
      currentRowIndex: null == currentRowIndex
          ? _value.currentRowIndex
          : currentRowIndex // ignore: cast_nullable_to_non_nullable
              as int,
      placeIndex: null == placeIndex
          ? _value.placeIndex
          : placeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      placeNumber: null == placeNumber
          ? _value.placeNumber
          : placeNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SeatPlaceSecondaryV2Impl extends _SeatPlaceSecondaryV2 {
  const _$SeatPlaceSecondaryV2Impl(
      {required this.branchIndex,
      required this.rowLabel,
      required this.currentRowIndex,
      required this.placeIndex,
      required this.placeNumber})
      : super._();

  @override
  final int branchIndex;
  @override
  final String rowLabel;
  @override
  final int currentRowIndex;
  @override
  final int placeIndex;
  @override
  final int placeNumber;

  @override
  String toString() {
    return 'SeatPlaceSecondaryV2(branchIndex: $branchIndex, rowLabel: $rowLabel, currentRowIndex: $currentRowIndex, placeIndex: $placeIndex, placeNumber: $placeNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatPlaceSecondaryV2Impl &&
            (identical(other.branchIndex, branchIndex) ||
                other.branchIndex == branchIndex) &&
            (identical(other.rowLabel, rowLabel) ||
                other.rowLabel == rowLabel) &&
            (identical(other.currentRowIndex, currentRowIndex) ||
                other.currentRowIndex == currentRowIndex) &&
            (identical(other.placeIndex, placeIndex) ||
                other.placeIndex == placeIndex) &&
            (identical(other.placeNumber, placeNumber) ||
                other.placeNumber == placeNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, branchIndex, rowLabel,
      currentRowIndex, placeIndex, placeNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatPlaceSecondaryV2ImplCopyWith<_$SeatPlaceSecondaryV2Impl>
      get copyWith =>
          __$$SeatPlaceSecondaryV2ImplCopyWithImpl<_$SeatPlaceSecondaryV2Impl>(
              this, _$identity);
}

abstract class _SeatPlaceSecondaryV2 extends SeatPlaceSecondaryV2 {
  const factory _SeatPlaceSecondaryV2(
      {required final int branchIndex,
      required final String rowLabel,
      required final int currentRowIndex,
      required final int placeIndex,
      required final int placeNumber}) = _$SeatPlaceSecondaryV2Impl;
  const _SeatPlaceSecondaryV2._() : super._();

  @override
  int get branchIndex;
  @override
  String get rowLabel;
  @override
  int get currentRowIndex;
  @override
  int get placeIndex;
  @override
  int get placeNumber;
  @override
  @JsonKey(ignore: true)
  _$$SeatPlaceSecondaryV2ImplCopyWith<_$SeatPlaceSecondaryV2Impl>
      get copyWith => throw _privateConstructorUsedError;
}
