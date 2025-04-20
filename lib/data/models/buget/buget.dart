import 'package:freezed_annotation/freezed_annotation.dart';

part 'buget.freezed.dart';
part 'buget.g.dart';

@JsonEnum(valueField: 'value')
enum BudgetType {
  monthly(value: 'monthly'),
  yearly(value: 'yearly');

  final String value;

  const BudgetType({required this.value});
}

@freezed
abstract class CreateBudgetModel with _$CreateBudgetModel {
  const factory CreateBudgetModel({
    required double amount,
    required BudgetType type,
  }) = _CreateBudgetModel;

  factory CreateBudgetModel.fromJson(Map<String, dynamic> json) =>
      _$CreateBudgetModelFromJson(json);
}

@freezed
abstract class UpdateBudgetModel with _$UpdateBudgetModel {
  const factory UpdateBudgetModel({
    required int id,
    required double amount,
    required BudgetType type,
  }) = _UpdateBudgetModel;

  factory UpdateBudgetModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateBudgetModelFromJson(json);
}

@freezed
abstract class BudgetModel with _$BudgetModel {
  const factory BudgetModel({
    required int id,
    required double amount,
    required BudgetType type,
    @Default(0) double totalSpent,
  }) = _BudgetModel;

  factory BudgetModel.fromJson(Map<String, dynamic> json) =>
      _$BudgetModelFromJson(json);
}
