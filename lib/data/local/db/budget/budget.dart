import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/data/local/db/tables/budget.dart';
import 'package:money_expenses_tracker/data/local/db/tables/expense.dart';
import 'package:money_expenses_tracker/data/local/local_database_manager.dart';
import 'package:money_expenses_tracker/data/models/buget/buget.dart';
import 'package:money_expenses_tracker/data/models/expense/expense.dart';
import 'package:money_expenses_tracker/data/repository/currency/currency_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'budget.g.dart';

@riverpod
BudgetLocalSource budgetLocalSource(Ref ref) {
  return BudgetLocalSource(SqfliteDbManager.db);
}

class BudgetLocalSource {
  final Database db;

  BudgetLocalSource(this.db);

  Future<void> insertBudget(CreateBudgetModel budget) async {
    await db.insert(
      BudgetLocalDbTable().tableName,
      budget.toJson(),
    );
  }

  Future<void> deleteBudget(int id) async {
    await db.delete(
      BudgetLocalDbTable().tableName,
      where: '${BudgetLocalDbTable.id} = ?',
      whereArgs: [id],
    );
  }

  Future<void> updateBudget(UpdateBudgetModel budget) async {
    await db.update(
      BudgetLocalDbTable().tableName,
      budget.toJson(),
      where: '${BudgetLocalDbTable.id} = ?',
      whereArgs: [budget.id],
    );
  }

  Future<BudgetModel?> getBudget({BudgetType? type}) async {
    final result = await db.query(
      BudgetLocalDbTable().tableName,
      where: type != null ? '${BudgetLocalDbTable.type} = ?' : null,
      whereArgs: type != null ? [type.name] : null,
      limit: 1,
    );
    final budget = result.firstOrNull;

    if (budget == null) {
      return null;
    }

    final budgetModel = BudgetModel.fromJson(budget);

    final totalSpentInBudgetCurrency =
        await getTotalSpentThisMonthInBudgetCurrency(budget: budgetModel);

    return budgetModel.copyWith(
      totalSpent: totalSpentInBudgetCurrency,
    );
  }

  Future<double> getTotalSpentThisMonthInBudgetCurrency({
    required BudgetModel budget,
  }) async {
    final totalSpentInUsd = await _getTotalSpentThisMonthInUsd();
    final budgetCurrencyToUsdRate =
        exchangeRateToUsd[Currency.fromName(budget.currency)] ?? 1.0;

    return totalSpentInUsd / budgetCurrencyToUsdRate;
  }

  Future<double> _getTotalSpentThisMonthInUsd() async {
    final now = DateTime.now();
    final startOfMonth = DateTime(now.year, now.month, 1);
    final endOfMonth = DateTime(now.year, now.month + 1, 0);

    final result = await db.query(
      ExpenseLocalDbTable().tableName,
      where:
          '${ExpenseLocalDbTable.date} >= ? AND ${ExpenseLocalDbTable.date} <= ?',
      whereArgs: [startOfMonth.toIso8601String(), endOfMonth.toIso8601String()],
    );

    final expenses = result.map((e) => ExpenseModel.fromJson(e)).toList();

    return expenses.fold<double>(0.0, (sum, expense) {
      final currency = expense.currency;
      final amount = expense.amount;
      final exchangeRate =
          exchangeRateToUsd[Currency.fromName(currency)] ?? 1.0;
      return sum + amount * exchangeRate;
    });
  }
}
