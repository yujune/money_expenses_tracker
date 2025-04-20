import 'package:money_expenses_tracker/data/models/expense/expense.dart';
import 'package:money_expenses_tracker/data/repository/expense/expense_repository.dart';
import 'package:money_expenses_tracker/features/expense/providers/expenses_filter_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'expenses_provider.g.dart';

@riverpod
class Expenses extends _$Expenses {
  @override
  Future<List<ExpenseModel>> build() async {
    final repository = ref.watch(expenseRepositoryProvider);
    final filter = ref.watch(expensesFilterProvider);

    final expenses = await repository.getExpenses(
      sortBy: filter.sortBy,
      startDate: filter.startDate,
      endDate: filter.endDate,
      category: filter.category,
    );

    return expenses;
  }
}
