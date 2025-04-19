import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/data/api/category_service.dart';
import 'package:money_expenses_tracker/data/local/db/category/category.dart';
import 'package:money_expenses_tracker/data/models/category/category.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_repository.g.dart';

abstract class ICategoryRepository {
  Future<List<CategoryModel>> getCategories();
  Future<void> createCategories(List<CategoryModel> categories);
}

@riverpod
ICategoryRepository categoryRepository(Ref ref) {
  return CategoryRepository(
    localSource: ref.watch(categoryLocalSourceProvider),
    apiService: ref.watch(categoryApiServiceProvider),
  );
}

class CategoryRepository extends ICategoryRepository {
  CategoryRepository({
    required this.localSource,
    required this.apiService,
  });

  final CategoryLocalSource localSource;
  final CategoryApiService apiService;

  @override
  Future<void> createCategories(List<CategoryModel> categories) async {
    await localSource.insertCategories(categories);
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    List<CategoryModel> categories = [];
    categories = await localSource.getCategories();

    if (categories.isEmpty) {
      categories = await apiService.getCategories();
      if (categories.isNotEmpty) {
        await localSource.insertCategories(categories);
      }
    }
    return categories;
  }
}
