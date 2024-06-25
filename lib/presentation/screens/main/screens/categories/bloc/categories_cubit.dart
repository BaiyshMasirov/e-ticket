import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/screens/main/screens/categories/bloc/categories_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final DictionaryRepository _dictionaryRepository;

  CategoriesCubit._({
    required DictionaryRepository dictionaryRepository,
  })  : _dictionaryRepository = dictionaryRepository,
        super(const CategoriesState.initial());

  factory CategoriesCubit.initialize() {
    return CategoriesCubit._(
      dictionaryRepository: GetIt.I.get(),
    );
  }

  Future<void> getCategories() async {
    emit(const CategoriesState.loading());

    final response = await _dictionaryRepository.getCategories();

    response.fold(
      (failure) => emit(CategoriesState.error(
        errorMessage: failure.errorMessage,
      )),
      (categories) => emit(
        CategoriesState.success(items: categories),
      ),
    );
  }
}
