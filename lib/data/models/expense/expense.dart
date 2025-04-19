import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense.freezed.dart';
part 'expense.g.dart';

@freezed
abstract class CreateExpenseModel with _$CreateExpenseModel {
  const factory CreateExpenseModel({
    required double amount,
    required String currency,
    String? notes,
    String? category,
    required DateTime date,
  }) = _CreateExpenseModel;

  factory CreateExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateExpenseModelFromJson(json);
}

@freezed
abstract class ExpenseModel with _$ExpenseModel {
  const factory ExpenseModel({
    required int id,
    String? category,
    required double amount,
    required String currency,
    required DateTime date,
    required String createdAt,
    String? notes,
  }) = _ExpenseModel;

  factory ExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$ExpenseModelFromJson(json);
}
