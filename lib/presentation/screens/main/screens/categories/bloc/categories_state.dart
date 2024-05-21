import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:eticket/data/models/models.dart';

part 'categories_state.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const CategoriesState._();

  const factory CategoriesState.initial() = _CategoriesStateInitial;

  const factory CategoriesState.loading() = _CategoriesStateLoading;

  const factory CategoriesState.success({
    required List<CategoryDto> items,
  }) = _CategoriesStateSuccess;

  const factory CategoriesState.error({
    required String? errorMessage,
  }) = _CategoriesStateError;
}
