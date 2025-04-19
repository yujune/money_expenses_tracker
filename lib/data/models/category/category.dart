import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
abstract class ExpenseCategoryResponse with _$ExpenseCategoryResponse {
  const factory ExpenseCategoryResponse({
    required List<CategoryModel> expenseCategories,
  }) = _ExpenseCategoryResponse;

  factory ExpenseCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ExpenseCategoryResponseFromJson(json);
}

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String name,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
