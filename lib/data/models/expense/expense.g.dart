// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateExpenseModel _$CreateExpenseModelFromJson(Map<String, dynamic> json) =>
    _CreateExpenseModel(
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      notes: json['notes'] as String?,
      category: json['category'] as String?,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$CreateExpenseModelToJson(_CreateExpenseModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'notes': instance.notes,
      'category': instance.category,
      'date': instance.date.toIso8601String(),
    };

_ExpenseModel _$ExpenseModelFromJson(Map<String, dynamic> json) =>
    _ExpenseModel(
      id: (json['id'] as num).toInt(),
      category: json['category'] as String?,
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      date: DateTime.parse(json['date'] as String),
      createdAt: json['createdAt'] as String,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$ExpenseModelToJson(_ExpenseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'amount': instance.amount,
      'currency': instance.currency,
      'date': instance.date.toIso8601String(),
      'createdAt': instance.createdAt,
      'notes': instance.notes,
    };
