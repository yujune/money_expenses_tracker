import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_expenses_tracker/data/repository/expense/expense_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pie_chart_data_provider.freezed.dart';
part 'pie_chart_data_provider.g.dart';

@freezed
abstract class TotalExpensesByCategoryModel
    with _$TotalExpensesByCategoryModel {
  const factory TotalExpensesByCategoryModel({
    required String category,
    required double amount,
  }) = _TotalExpensesByCategoryModel;
}

@riverpod
class TotalExpensesByCategory extends _$TotalExpensesByCategory {
  @override
  Future<List<TotalExpensesByCategoryModel>> build() async {
    final expensesRepository = ref.watch(expenseRepositoryProvider);

    final currentDate = DateTime.now();

    final currentMonthExpenses = await expensesRepository.getExpenses(
      startDate: DateTime(currentDate.year, currentDate.month, 1),
      endDate: DateTime(currentDate.year, currentDate.month + 1, 0),
    );

    final groupedExpenses = currentMonthExpenses
        .groupListsBy((expense) => expense.category ?? 'Other');

    final value = groupedExpenses.entries.map((entry) {
      return TotalExpensesByCategoryModel(
        category: entry.key,
        amount: entry.value.fold(0, (sum, expense) => sum + expense.amount),
      );
    }).toList();

    return value;
  }
}
