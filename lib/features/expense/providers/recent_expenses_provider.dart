import 'package:money_expenses_tracker/data/models/expense/expense.dart';
import 'package:money_expenses_tracker/data/repository/expense/expense_repository.dart';
import 'package:money_expenses_tracker/features/buget/providers/buget_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recent_expenses_provider.g.dart';

@riverpod
class RecentExpenses extends _$RecentExpenses {
  @override
  Future<List<ExpenseModel>> build() async {
    final repository = ref.watch(expenseRepositoryProvider);

    final expenses = await repository.getExpenses(limit: 5);

    return expenses;
  }

  Future<void> createExpense(CreateExpenseModel expense) async {
    final repository = ref.read(expenseRepositoryProvider);

    await repository.createExpense(expense);

    ref.invalidateSelf();

    ref.invalidate(budgetProvider);
  }

  Future<void> deleteExpense(int id) async {
    final repository = ref.read(expenseRepositoryProvider);

    await repository.deleteExpense(id);

    ref.invalidateSelf();

    ref.invalidate(budgetProvider);
  }

  Future<void> updateExpense(ExpenseModel expense) async {
    final repository = ref.read(expenseRepositoryProvider);

    await repository.updateExpense(expense);

    ref.invalidateSelf();

    ref.invalidate(budgetProvider);
  }
}
