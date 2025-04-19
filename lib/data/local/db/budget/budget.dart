import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/data/local/db/tables/budget.dart';
import 'package:money_expenses_tracker/data/local/local_database_manager.dart';
import 'package:money_expenses_tracker/data/models/buget/buget.dart';
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

  Future<void> insertBudget(BudgetModel budget) async {
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

  Future<void> updateBudget(BudgetModel budget) async {
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

    if (result.isEmpty) {
      return null;
    }

    return BudgetModel.fromJson(result.first);
  }
}
