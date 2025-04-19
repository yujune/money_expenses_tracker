import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/data/local/db/expense/expense.dart';
import 'package:money_expenses_tracker/data/models/expense/expense.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'expense_repository.g.dart';

abstract class IExpenseRepository {
  Future<List<ExpenseModel>> getExpenses();
  Future<void> createExpense(CreateExpenseModel expense);
  Future<ExpenseModel> updateExpense(ExpenseModel expense);
  Future<void> deleteExpense(int id);
}

@riverpod
IExpenseRepository expenseRepository(Ref ref) {
  return ExpenseRepository(
    localSource: ref.watch(expenseLocalSourceProvider),
  );
}

class ExpenseRepository extends IExpenseRepository {
  ExpenseRepository({
    required this.localSource,
  });

  final ExpenseLocalSource localSource;

  @override
  Future<void> createExpense(CreateExpenseModel expense) async {
    await localSource.insertExpense(expense);
  }

  @override
  Future<void> deleteExpense(int id) async {
    await localSource.deleteExpense(id);
  }

  @override
  Future<List<ExpenseModel>> getExpenses() async {
    return await localSource.getExpenses();
  }

  @override
  Future<ExpenseModel> updateExpense(ExpenseModel expense) async {
    await localSource.updateExpense(expense);
    return expense;
  }
}
