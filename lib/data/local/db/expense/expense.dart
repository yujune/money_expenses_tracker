import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/data/local/db/tables/expense.dart';
import 'package:money_expenses_tracker/data/local/local_database_manager.dart';
import 'package:money_expenses_tracker/data/models/expense/expense.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'expense.g.dart';

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

  Future<List<ExpenseModel>> getExpenses() async {
    final List<Map<String, dynamic>> maps = await db.query(
      ExpenseLocalDbTable().tableName,
    );

    return maps.map((map) => ExpenseModel.fromJson(map)).toList();
  }
}
