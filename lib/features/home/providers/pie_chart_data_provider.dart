import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_expenses_tracker/data/repository/currency/currency_repository.dart';
import 'package:money_expenses_tracker/data/repository/expense/expense_repository.dart';
import 'package:money_expenses_tracker/features/buget/providers/budget_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pie_chart_data_provider.freezed.dart';
part 'pie_chart_data_provider.g.dart';

@freezed
abstract class CategoryExpenseModel with _$CategoryExpenseModel {
  const factory CategoryExpenseModel({
    required String category,
    required double amount,
    required String currency,
  }) = _CategoryExpenseModel;
}

@freezed
abstract class TotalCategoryExpensesModel with _$TotalCategoryExpensesModel {
  const factory TotalCategoryExpensesModel({
    required List<CategoryExpenseModel> categoryExpenses,
    required double amount,
    required String currency,
  }) = _TotalCategoryExpensesModel;
}

@riverpod
class TotalExpensesByCategory extends _$TotalExpensesByCategory {
  @override
  Future<TotalCategoryExpensesModel> build() async {
    final expensesRepository = ref.watch(expenseRepositoryProvider);
    final budget = await ref.watch(budgetProvider.future);

    //chart follow budget currency
    final currency = budget?.currency ?? Currency.MYR.name;

    final currentDate = DateTime.now();

    final currentMonthExpenses = await expensesRepository.getExpenses(
      startDate: DateTime(currentDate.year, currentDate.month, 1),
      endDate: DateTime(currentDate.year, currentDate.month + 1, 0),
      convertToCurrency: currency,
    );

    final groupedExpenses = currentMonthExpenses
        .groupListsBy((expense) => expense.category ?? 'Other');

    final categoryExpenses = groupedExpenses.entries.map(
      (entry) {
        return CategoryExpenseModel(
          category: entry.key,
          amount: entry.value.fold(0, (sum, expense) => sum + expense.amount),
          currency: currency,
        );
      },
    ).toList();

    final totalCurrentMonthExpenses = currentMonthExpenses.fold<double>(
        0, (sum, expense) => sum + expense.amount);

    final totalCategoryExpenses = TotalCategoryExpensesModel(
      categoryExpenses: categoryExpenses,
      amount: totalCurrentMonthExpenses,
      currency: currency,
    );

    return totalCategoryExpenses;
  }
}
