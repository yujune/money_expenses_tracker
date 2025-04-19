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
abstract class BudgetModel with _$BudgetModel {
  const factory BudgetModel({
    required int id,
    required double amount,
    required BudgetType type,
  }) = _BudgetModel;

  factory BudgetModel.fromJson(Map<String, dynamic> json) =>
      _$BudgetModelFromJson(json);
}
