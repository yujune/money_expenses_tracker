import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/data/api/config/dio_client.dart';
import 'package:money_expenses_tracker/data/models/category/category.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_service.g.dart';

@riverpod
CategoryApiService categoryApiService(Ref ref) {
  return CategoryApiService(dioClient: ref.watch(dioClientProvider));
}

class CategoryApiService {
  CategoryApiService({required this.dioClient});

  final DioClient dioClient;

  Future<List<CategoryModel>> getCategories() async {
    final response = await dioClient.call(
      'GET',
      '/experiment/mobile/expenseCategories.json',
    );

    if (response.data case final data?) {
      return ExpenseCategoryResponse.fromJson(data).expenseCategories;
    }

    return [];
  }
}
