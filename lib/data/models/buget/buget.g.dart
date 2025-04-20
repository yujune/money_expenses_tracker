// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateBudgetModel _$CreateBudgetModelFromJson(Map<String, dynamic> json) =>
    _CreateBudgetModel(
      amount: (json['amount'] as num).toDouble(),
      type: $enumDecode(_$BudgetTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$CreateBudgetModelToJson(_CreateBudgetModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'type': _$BudgetTypeEnumMap[instance.type]!,
    };

const _$BudgetTypeEnumMap = {
  BudgetType.monthly: 'monthly',
  BudgetType.yearly: 'yearly',
};

_UpdateBudgetModel _$UpdateBudgetModelFromJson(Map<String, dynamic> json) =>
    _UpdateBudgetModel(
      id: (json['id'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      type: $enumDecode(_$BudgetTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$UpdateBudgetModelToJson(_UpdateBudgetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'type': _$BudgetTypeEnumMap[instance.type]!,
    };

_BudgetModel _$BudgetModelFromJson(Map<String, dynamic> json) => _BudgetModel(
      id: (json['id'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      type: $enumDecode(_$BudgetTypeEnumMap, json['type']),
      totalSpent: (json['totalSpent'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$BudgetModelToJson(_BudgetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'type': _$BudgetTypeEnumMap[instance.type]!,
      'totalSpent': instance.totalSpent,
    };
