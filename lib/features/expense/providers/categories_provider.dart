import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_expenses_tracker/data/models/category/category.dart';
import 'package:money_expenses_tracker/data/repository/category/category_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<CategoryModel>> categories(Ref ref) async {
  final repository = ref.watch(categoryRepositoryProvider);

  return repository.getCategories();
}
