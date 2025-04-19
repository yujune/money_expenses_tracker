// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BudgetModel _$BudgetModelFromJson(Map<String, dynamic> json) => _BudgetModel(
      id: (json['id'] as num).toInt(),
      amount: (json['amount'] as num).toDouble(),
      type: $enumDecode(_$BudgetTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$BudgetModelToJson(_BudgetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'type': _$BudgetTypeEnumMap[instance.type]!,
    };

const _$BudgetTypeEnumMap = {
  BudgetType.monthly: 'monthly',
  BudgetType.yearly: 'yearly',
};
