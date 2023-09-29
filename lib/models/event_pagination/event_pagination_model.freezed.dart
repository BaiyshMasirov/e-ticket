// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventPaginationModel _$EventPaginationModelFromJson(Map<String, dynamic> json) {
  return _EventPaginationModel.fromJson(json);
}

/// @nodoc
mixin _$EventPaginationModel {
  int get currentPageIndex => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalItemCount => throw _privateConstructorUsedError;
  List<dynamic> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventPaginationModelCopyWith<EventPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventPaginationModelCopyWith<$Res> {
  factory $EventPaginationModelCopyWith(EventPaginationModel value,
          $Res Function(EventPaginationModel) then) =
      _$EventPaginationModelCopyWithImpl<$Res>;
  $Res call({
    int currentPageIndex,
    int pageSize,
    int totalItemCount,
    List<dynamic> list,
  });
}

/// @nodoc
class _$EventPaginationModelCopyWithImpl<$Res>
    implements $EventPaginationModelCopyWith<$Res> {
  _$EventPaginationModelCopyWithImpl(this._value, this._then);

  final EventPaginationModel _value;
  final $Res Function(EventPaginationModel) _then;

  @override
  $Res call({
    Object? currentPageIndex = freezed,
    Object? pageSize = freezed,
    Object? totalItemCount = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      currentPageIndex: currentPageIndex == freezed
          ? _value.currentPageIndex
          : currentPageIndex as int,
      pageSize: pageSize == freezed ? _value.pageSize : pageSize as int,
      totalItemCount: totalItemCount == freezed
          ? _value.totalItemCount
          : totalItemCount as int,
      list: list == freezed ? _value.list : list as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$EventPaginationModelCopyWith<$Res>
    implements $EventPaginationModelCopyWith<$Res> {
  factory _$EventPaginationModelCopyWith(_EventPaginationModel value,
          $Res Function(_EventPaginationModel) then) =
      __$EventPaginationModelCopyWithImpl<$Res>;
  @override
  $Res call({
    int currentPageIndex,
    int pageSize,
    int totalItemCount,
    List<dynamic> list,
  });
}

/// @nodoc
class __$EventPaginationModelCopyWithImpl<$Res>
    extends _$EventPaginationModelCopyWithImpl<$Res>
    implements _$EventPaginationModelCopyWith<$Res> {
  __$EventPaginationModelCopyWithImpl(
      _EventPaginationModel _value, $Res Function(_EventPaginationModel) _then)
      : super(_value, (v) => _then(v as _EventPaginationModel));

  @override
  _EventPaginationModel get _value => super._value as _EventPaginationModel;

  @override
  $Res call({
    Object? currentPageIndex = freezed,
    Object? pageSize = freezed,
    Object? totalItemCount = freezed,
    Object? list = freezed,
  }) {
    return _then(_EventPaginationModel(
      currentPageIndex: currentPageIndex == freezed
          ? _value.currentPageIndex
          : currentPageIndex as int,
      pageSize: pageSize == freezed ? _value.pageSize : pageSize as int,
      totalItemCount: totalItemCount == freezed
          ? _value.totalItemCount
          : totalItemCount as int,
      list: list == freezed ? _value.list : list as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventPaginationModel implements _EventPaginationModel {
  const _$_EventPaginationModel({
    required this.currentPageIndex,
    required this.pageSize,
    required this.totalItemCount,
    required this.list,
  });

  factory _$_EventPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventPaginationModelFromJson(json);

  @override
  final int currentPageIndex;
  @override
  final int pageSize;
  @override
  final int totalItemCount;
  @override
  final List<dynamic> list;

  @override
  String toString() {
    return 'EventPaginationModel(currentPageIndex: $currentPageIndex, pageSize: $pageSize, totalItemCount: $totalItemCount, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventPaginationModel &&
            const DeepCollectionEquality()
                .equals(other.currentPageIndex, currentPageIndex) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality()
                .equals(other.totalItemCount, totalItemCount) &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentPageIndex, pageSize, totalItemCount, list);

  @override
  _$EventPaginationModelCopyWith<_EventPaginationModel> get copyWith =>
      __$EventPaginationModelCopyWithImpl<_EventPaginationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventPaginationModelToJson(this);
  }
}

abstract class _EventPaginationModel implements EventPaginationModel {
  const factory _EventPaginationModel({
    required int currentPageIndex,
    required int pageSize,
    required int totalItemCount,
    required List<dynamic> list,
  }) = _$_EventPaginationModel;

  factory _EventPaginationModel.fromJson(Map<String, dynamic> json) =
      _$_EventPaginationModel.fromJson;

  @override
  int get currentPageIndex;
  @override
  int get pageSize;
  @override
  int get totalItemCount;
  @override
  List<dynamic> get list;
  @override
  _$EventPaginationModelCopyWith<_EventPaginationModel> get copyWith;
}
