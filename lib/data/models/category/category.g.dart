// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpenseCategoryResponse _$ExpenseCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    _ExpenseCategoryResponse(
      expenseCategories: (json['expenseCategories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExpenseCategoryResponseToJson(
        _ExpenseCategoryResponse instance) =>
    <String, dynamic>{
      'expenseCategories': instance.expenseCategories,
    };

_CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    _CategoryModel(
      name: json['name'] as String,
    );

Map<String, dynamic> _$CategoryModelToJson(_CategoryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
