// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_seat_hold_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketSeatHoldState {
  List<TicketDto> get tickets => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TicketDto> tickets) data,
    required TResult Function(List<TicketDto> tickets) holding,
    required TResult Function(
            List<TicketDto> tickets, double totalSum, String bookingId)
        holdSuccess,
    required TResult Function(List<TicketDto> tickets) holdError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TicketDto> tickets)? data,
    TResult? Function(List<TicketDto> tickets)? holding,
    TResult? Function(
            List<TicketDto> tickets, double totalSum, String bookingId)?
        holdSuccess,
    TResult? Function(List<TicketDto> tickets)? holdError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TicketDto> tickets)? data,
    TResult Function(List<TicketDto> tickets)? holding,
    TResult Function(
            List<TicketDto> tickets, double totalSum, String bookingId)?
        holdSuccess,
    TResult Function(List<TicketDto> tickets)? holdError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketSeatHoldDataState value) data,
    required TResult Function(TicketSeatHoldingState value) holding,
    required TResult Function(_TicketSeatHoldSuccessState value) holdSuccess,
    required TResult Function(_TicketSeatHoldErrorState value) holdError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketSeatHoldDataState value)? data,
    TResult? Function(TicketSeatHoldingState value)? holding,
    TResult? Function(_TicketSeatHoldSuccessState value)? holdSuccess,
    TResult? Function(_TicketSeatHoldErrorState value)? holdError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketSeatHoldDataState value)? data,
    TResult Function(TicketSeatHoldingState value)? holding,
    TResult Function(_TicketSeatHoldSuccessState value)? holdSuccess,
    TResult Function(_TicketSeatHoldErrorState value)? holdError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketSeatHoldStateCopyWith<TicketSeatHoldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketSeatHoldStateCopyWith<$Res> {
  factory $TicketSeatHoldStateCopyWith(
          TicketSeatHoldState value, $Res Function(TicketSeatHoldState) then) =
      _$TicketSeatHoldStateCopyWithImpl<$Res, TicketSeatHoldState>;
  @useResult
  $Res call({List<TicketDto> tickets});
}

/// @nodoc
class _$TicketSeatHoldStateCopyWithImpl<$Res, $Val extends TicketSeatHoldState>
    implements $TicketSeatHoldStateCopyWith<$Res> {
  _$TicketSeatHoldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_value.copyWith(
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketSeatHoldDataStateImplCopyWith<$Res>
    implements $TicketSeatHoldStateCopyWith<$Res> {
  factory _$$TicketSeatHoldDataStateImplCopyWith(
          _$TicketSeatHoldDataStateImpl value,
          $Res Function(_$TicketSeatHoldDataStateImpl) then) =
      __$$TicketSeatHoldDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TicketDto> tickets});
}

/// @nodoc
class __$$TicketSeatHoldDataStateImplCopyWithImpl<$Res>
    extends _$TicketSeatHoldStateCopyWithImpl<$Res,
        _$TicketSeatHoldDataStateImpl>
    implements _$$TicketSeatHoldDataStateImplCopyWith<$Res> {
  __$$TicketSeatHoldDataStateImplCopyWithImpl(
      _$TicketSeatHoldDataStateImpl _value,
      $Res Function(_$TicketSeatHoldDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_$TicketSeatHoldDataStateImpl(
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketDto>,
    ));
  }
}

/// @nodoc

class _$TicketSeatHoldDataStateImpl extends _TicketSeatHoldDataState {
  const _$TicketSeatHoldDataStateImpl({required final List<TicketDto> tickets})
      : _tickets = tickets,
        super._();

  final List<TicketDto> _tickets;
  @override
  List<TicketDto> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'TicketSeatHoldState.data(tickets: $tickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketSeatHoldDataStateImpl &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketSeatHoldDataStateImplCopyWith<_$TicketSeatHoldDataStateImpl>
      get copyWith => __$$TicketSeatHoldDataStateImplCopyWithImpl<
          _$TicketSeatHoldDataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TicketDto> tickets) data,
    required TResult Function(List<TicketDto> tickets) holding,
    required TResult Function(
            List<TicketDto> tickets, double totalSum, String bookingId)
        holdSuccess,
    required TResult Function(List<TicketDto> tickets) holdError,
  }) {
    return data(tickets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TicketDto> tickets)? data,
    TResult? Function(List<TicketDto> tickets)? holding,
    TResult? Function(
            List<TicketDto> tickets, double totalSum, String bookingId)?
        holdSuccess,
    TResult? Function(List<TicketDto> tickets)? holdError,
  }) {
    return data?.call(tickets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TicketDto> tickets)? data,
    TResult Function(List<TicketDto> tickets)? holding,
    TResult Function(
            List<TicketDto> tickets, double totalSum, String bookingId)?
        holdSuccess,
    TResult Function(List<TicketDto> tickets)? holdError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(tickets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketSeatHoldDataState value) data,
    required TResult Function(TicketSeatHoldingState value) holding,
    required TResult Function(_TicketSeatHoldSuccessState value) holdSuccess,
    required TResult Function(_TicketSeatHoldErrorState value) holdError,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketSeatHoldDataState value)? data,
    TResult? Function(TicketSeatHoldingState value)? holding,
    TResult? Function(_TicketSeatHoldSuccessState value)? holdSuccess,
    TResult? Function(_TicketSeatHoldErrorState value)? holdError,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketSeatHoldDataState value)? data,
    TResult Function(TicketSeatHoldingState value)? holding,
    TResult Function(_TicketSeatHoldSuccessState value)? holdSuccess,
    TResult Function(_TicketSeatHoldErrorState value)? holdError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _TicketSeatHoldDataState extends TicketSeatHoldState {
  const factory _TicketSeatHoldDataState(
      {required final List<TicketDto> tickets}) = _$TicketSeatHoldDataStateImpl;
  const _TicketSeatHoldDataState._() : super._();

  @override
  List<TicketDto> get tickets;
  @override
  @JsonKey(ignore: true)
  _$$TicketSeatHoldDataStateImplCopyWith<_$TicketSeatHoldDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketSeatHoldingStateImplCopyWith<$Res>
    implements $TicketSeatHoldStateCopyWith<$Res> {
  factory _$$TicketSeatHoldingStateImplCopyWith(
          _$TicketSeatHoldingStateImpl value,
          $Res Function(_$TicketSeatHoldingStateImpl) then) =
      __$$TicketSeatHoldingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TicketDto> tickets});
}

/// @nodoc
class __$$TicketSeatHoldingStateImplCopyWithImpl<$Res>
    extends _$TicketSeatHoldStateCopyWithImpl<$Res,
        _$TicketSeatHoldingStateImpl>
    implements _$$TicketSeatHoldingStateImplCopyWith<$Res> {
  __$$TicketSeatHoldingStateImplCopyWithImpl(
      _$TicketSeatHoldingStateImpl _value,
      $Res Function(_$TicketSeatHoldingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_$TicketSeatHoldingStateImpl(
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketDto>,
    ));
  }
}

/// @nodoc

class _$TicketSeatHoldingStateImpl extends TicketSeatHoldingState {
  const _$TicketSeatHoldingStateImpl({required final List<TicketDto> tickets})
      : _tickets = tickets,
        super._();

  final List<TicketDto> _tickets;
  @override
  List<TicketDto> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'TicketSeatHoldState.holding(tickets: $tickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketSeatHoldingStateImpl &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketSeatHoldingStateImplCopyWith<_$TicketSeatHoldingStateImpl>
      get copyWith => __$$TicketSeatHoldingStateImplCopyWithImpl<
          _$TicketSeatHoldingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TicketDto> tickets) data,
    required TResult Function(List<TicketDto> tickets) holding,
    required TResult Function(
            List<TicketDto> tickets, double totalSum, String bookingId)
        holdSuccess,
    required TResult Function(List<TicketDto> tickets) holdError,
  }) {
    return holding(tickets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TicketDto> tickets)? data,
    TResult? Function(List<TicketDto> tickets)? holding,
    TResult? Function(
            List<TicketDto> tickets, double totalSum, String bookingId)?
        holdSuccess,
    TResult? Function(List<TicketDto> tickets)? holdError,
  }) {
    return holding?.call(tickets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TicketDto> tickets)? data,
    TResult Function(List<TicketDto> tickets)? holding,
    TResult Function(
            List<TicketDto> tickets, double totalSum, String bookingId)?
        holdSuccess,
    TResult Function(List<TicketDto> tickets)? holdError,
    required TResult orElse(),
  }) {
    if (holding != null) {
      return holding(tickets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketSeatHoldDataState value) data,
    required TResult Function(TicketSeatHoldingState value) holding,
    required TResult Function(_TicketSeatHoldSuccessState value) holdSuccess,
    required TResult Function(_TicketSeatHoldErrorState value) holdError,
  }) {
    return holding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketSeatHoldDataState value)? data,
    TResult? Function(TicketSeatHoldingState value)? holding,
    TResult? Function(_TicketSeatHoldSuccessState value)? holdSuccess,
    TResult? Function(_TicketSeatHoldErrorState value)? holdError,
  }) {
    return holding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketSeatHoldDataState value)? data,
    TResult Function(TicketSeatHoldingState value)? holding,
    TResult Function(_TicketSeatHoldSuccessState value)? holdSuccess,
    TResult Function(_TicketSeatHoldErrorState value)? holdError,
    required TResult orElse(),
  }) {
    if (holding != null) {
      return holding(this);
    }
    return orElse();
  }
}

abstract class TicketSeatHoldingState extends TicketSeatHoldState {
  const factory TicketSeatHoldingState(
      {required final List<TicketDto> tickets}) = _$TicketSeatHoldingStateImpl;
  const TicketSeatHoldingState._() : super._();

  @override
  List<TicketDto> get tickets;
  @override
  @JsonKey(ignore: true)
  _$$TicketSeatHoldingStateImplCopyWith<_$TicketSeatHoldingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketSeatHoldSuccessStateImplCopyWith<$Res>
    implements $TicketSeatHoldStateCopyWith<$Res> {
  factory _$$TicketSeatHoldSuccessStateImplCopyWith(
          _$TicketSeatHoldSuccessStateImpl value,
          $Res Function(_$TicketSeatHoldSuccessStateImpl) then) =
      __$$TicketSeatHoldSuccessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TicketDto> tickets, double totalSum, String bookingId});
}

/// @nodoc
class __$$TicketSeatHoldSuccessStateImplCopyWithImpl<$Res>
    extends _$TicketSeatHoldStateCopyWithImpl<$Res,
        _$TicketSeatHoldSuccessStateImpl>
    implements _$$TicketSeatHoldSuccessStateImplCopyWith<$Res> {
  __$$TicketSeatHoldSuccessStateImplCopyWithImpl(
      _$TicketSeatHoldSuccessStateImpl _value,
      $Res Function(_$TicketSeatHoldSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
    Object? totalSum = null,
    Object? bookingId = null,
  }) {
    return _then(_$TicketSeatHoldSuccessStateImpl(
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketDto>,
      totalSum: null == totalSum
          ? _value.totalSum
          : totalSum // ignore: cast_nullable_to_non_nullable
              as double,
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TicketSeatHoldSuccessStateImpl extends _TicketSeatHoldSuccessState {
  const _$TicketSeatHoldSuccessStateImpl(
      {required final List<TicketDto> tickets,
      required this.totalSum,
      required this.bookingId})
      : _tickets = tickets,
        super._();

  final List<TicketDto> _tickets;
  @override
  List<TicketDto> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  final double totalSum;
  @override
  final String bookingId;

  @override
  String toString() {
    return 'TicketSeatHoldState.holdSuccess(tickets: $tickets, totalSum: $totalSum, bookingId: $bookingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketSeatHoldSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            (identical(other.totalSum, totalSum) ||
                other.totalSum == totalSum) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_tickets), totalSum, bookingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketSeatHoldSuccessStateImplCopyWith<_$TicketSeatHoldSuccessStateImpl>
      get copyWith => __$$TicketSeatHoldSuccessStateImplCopyWithImpl<
          _$TicketSeatHoldSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TicketDto> tickets) data,
    required TResult Function(List<TicketDto> tickets) holding,
    required TResult Function(
            List<TicketDto> tickets, double totalSum, String bookingId)
        holdSuccess,
    required TResult Function(List<TicketDto> tickets) holdError,
  }) {
    return holdSuccess(tickets, totalSum, bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TicketDto> tickets)? data,
    TResult? Function(List<TicketDto> tickets)? holding,
    TResult? Function(
            List<TicketDto> tickets, double totalSum, String bookingId)?
        holdSuccess,
    TResult? Function(List<TicketDto> tickets)? holdError,
  }) {
    return holdSuccess?.call(tickets, totalSum, bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TicketDto> tickets)? data,
    TResult Function(List<TicketDto> tickets)? holding,
    TResult Function(
            List<TicketDto> tickets, double totalSum, String bookingId)?
        holdSuccess,
    TResult Function(List<TicketDto> tickets)? holdError,
    required TResult orElse(),
  }) {
    if (holdSuccess != null) {
      return holdSuccess(tickets, totalSum, bookingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketSeatHoldDataState value) data,
    required TResult Function(TicketSeatHoldingState value) holding,
    required TResult Function(_TicketSeatHoldSuccessState value) holdSuccess,
    required TResult Function(_TicketSeatHoldErrorState value) holdError,
  }) {
    return holdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketSeatHoldDataState value)? data,
    TResult? Function(TicketSeatHoldingState value)? holding,
    TResult? Function(_TicketSeatHoldSuccessState value)? holdSuccess,
    TResult? Function(_TicketSeatHoldErrorState value)? holdError,
  }) {
    return holdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketSeatHoldDataState value)? data,
    TResult Function(TicketSeatHoldingState value)? holding,
    TResult Function(_TicketSeatHoldSuccessState value)? holdSuccess,
    TResult Function(_TicketSeatHoldErrorState value)? holdError,
    required TResult orElse(),
  }) {
    if (holdSuccess != null) {
      return holdSuccess(this);
    }
    return orElse();
  }
}

abstract class _TicketSeatHoldSuccessState extends TicketSeatHoldState {
  const factory _TicketSeatHoldSuccessState(
      {required final List<TicketDto> tickets,
      required final double totalSum,
      required final String bookingId}) = _$TicketSeatHoldSuccessStateImpl;
  const _TicketSeatHoldSuccessState._() : super._();

  @override
  List<TicketDto> get tickets;
  double get totalSum;
  String get bookingId;
  @override
  @JsonKey(ignore: true)
  _$$TicketSeatHoldSuccessStateImplCopyWith<_$TicketSeatHoldSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketSeatHoldErrorStateImplCopyWith<$Res>
    implements $TicketSeatHoldStateCopyWith<$Res> {
  factory _$$TicketSeatHoldErrorStateImplCopyWith(
          _$TicketSeatHoldErrorStateImpl value,
          $Res Function(_$TicketSeatHoldErrorStateImpl) then) =
      __$$TicketSeatHoldErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TicketDto> tickets});
}

/// @nodoc
class __$$TicketSeatHoldErrorStateImplCopyWithImpl<$Res>
    extends _$TicketSeatHoldStateCopyWithImpl<$Res,
        _$TicketSeatHoldErrorStateImpl>
    implements _$$TicketSeatHoldErrorStateImplCopyWith<$Res> {
  __$$TicketSeatHoldErrorStateImplCopyWithImpl(
      _$TicketSeatHoldErrorStateImpl _value,
      $Res Function(_$TicketSeatHoldErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_$TicketSeatHoldErrorStateImpl(
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketDto>,
    ));
  }
}

/// @nodoc

class _$TicketSeatHoldErrorStateImpl extends _TicketSeatHoldErrorState {
  const _$TicketSeatHoldErrorStateImpl({required final List<TicketDto> tickets})
      : _tickets = tickets,
        super._();

  final List<TicketDto> _tickets;
  @override
  List<TicketDto> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'TicketSeatHoldState.holdError(tickets: $tickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketSeatHoldErrorStateImpl &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketSeatHoldErrorStateImplCopyWith<_$TicketSeatHoldErrorStateImpl>
      get copyWith => __$$TicketSeatHoldErrorStateImplCopyWithImpl<
          _$TicketSeatHoldErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TicketDto> tickets) data,
    required TResult Function(List<TicketDto> tickets) holding,
    required TResult Function(
            List<TicketDto> tickets, double totalSum, String bookingId)
        holdSuccess,
    required TResult Function(List<TicketDto> tickets) holdError,
  }) {
    return holdError(tickets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TicketDto> tickets)? data,
    TResult? Function(List<TicketDto> tickets)? holding,
    TResult? Function(
            List<TicketDto> tickets, double totalSum, String bookingId)?
        holdSuccess,
    TResult? Function(List<TicketDto> tickets)? holdError,
  }) {
    return holdError?.call(tickets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TicketDto> tickets)? data,
    TResult Function(List<TicketDto> tickets)? holding,
    TResult Function(
            List<TicketDto> tickets, double totalSum, String bookingId)?
        holdSuccess,
    TResult Function(List<TicketDto> tickets)? holdError,
    required TResult orElse(),
  }) {
    if (holdError != null) {
      return holdError(tickets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketSeatHoldDataState value) data,
    required TResult Function(TicketSeatHoldingState value) holding,
    required TResult Function(_TicketSeatHoldSuccessState value) holdSuccess,
    required TResult Function(_TicketSeatHoldErrorState value) holdError,
  }) {
    return holdError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketSeatHoldDataState value)? data,
    TResult? Function(TicketSeatHoldingState value)? holding,
    TResult? Function(_TicketSeatHoldSuccessState value)? holdSuccess,
    TResult? Function(_TicketSeatHoldErrorState value)? holdError,
  }) {
    return holdError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketSeatHoldDataState value)? data,
    TResult Function(TicketSeatHoldingState value)? holding,
    TResult Function(_TicketSeatHoldSuccessState value)? holdSuccess,
    TResult Function(_TicketSeatHoldErrorState value)? holdError,
    required TResult orElse(),
  }) {
    if (holdError != null) {
      return holdError(this);
    }
    return orElse();
  }
}

abstract class _TicketSeatHoldErrorState extends TicketSeatHoldState {
  const factory _TicketSeatHoldErrorState(
          {required final List<TicketDto> tickets}) =
      _$TicketSeatHoldErrorStateImpl;
  const _TicketSeatHoldErrorState._() : super._();

  @override
  List<TicketDto> get tickets;
  @override
  @JsonKey(ignore: true)
  _$$TicketSeatHoldErrorStateImplCopyWith<_$TicketSeatHoldErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
