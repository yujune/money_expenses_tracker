import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/data/local/db/tables/expense.dart';
import 'package:money_expenses_tracker/data/local/local_database_manager.dart';
import 'package:money_expenses_tracker/data/models/expense/expense.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'expense.g.dart';

enum ExpenseSortBy {
  latest(sqlOrderBy: '${ExpenseLocalDbTable.date} DESC'),
  oldest(sqlOrderBy: '${ExpenseLocalDbTable.date} ASC'),
  highestAmount(sqlOrderBy: '${ExpenseLocalDbTable.amount} DESC'),
  lowestAmount(sqlOrderBy: '${ExpenseLocalDbTable.amount} ASC');

  final String sqlOrderBy;

  const ExpenseSortBy({required this.sqlOrderBy});
}

@riverpod
ExpenseLocalSource expenseLocalSource(Ref ref) {
  return ExpenseLocalSource(SqfliteDbManager.db);
}

class ExpenseLocalSource {
  final Database db;

  ExpenseLocalSource(this.db);

  Future<void> insertExpense(CreateExpenseModel expense) async {
    await db.insert(
      ExpenseLocalDbTable().tableName,
      expense.toJson(),
    );
  }

  Future<void> updateExpense(ExpenseModel expense) async {
    await db.update(
      ExpenseLocalDbTable().tableName,
      expense.toJson(),
      where: '${ExpenseLocalDbTable.id} = ?',
      whereArgs: [expense.id],
    );
  }

  Future<void> deleteExpense(int id) async {
    await db.delete(
      ExpenseLocalDbTable().tableName,
      where: '${ExpenseLocalDbTable.id} = ?',
      whereArgs: [id],
    );
  }

  Future<List<ExpenseModel>> getExpenses({
    ExpenseSortBy? sortBy,
    String? category,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
  }) async {
    String? whereClause;
    List<dynamic>? whereArgs;

    if (category != null || startDate != null || endDate != null) {
      final conditions = <String>[];
      whereArgs = [];

      if (category != null) {
        conditions.add('${ExpenseLocalDbTable.category} = ?');
        whereArgs.add(category);
      }

      if (startDate != null) {
        conditions.add('${ExpenseLocalDbTable.date} >= ?');
        whereArgs.add(startDate.toIso8601String());
      }

      if (endDate != null) {
        conditions.add('${ExpenseLocalDbTable.date} <= ?');
        whereArgs.add(endDate.toIso8601String());
      }

      whereClause = conditions.join(' AND ');
    }

    final List<Map<String, dynamic>> maps = await db.query(
      ExpenseLocalDbTable().tableName,
      orderBy: sortBy?.sqlOrderBy,
      where: whereClause,
      whereArgs: whereArgs,
      limit: limit,
    );

    return maps.map((map) => ExpenseModel.fromJson(map)).toList();
  }
}
