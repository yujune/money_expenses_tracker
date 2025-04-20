import 'package:money_expenses_tracker/data/models/buget/buget.dart';
import 'package:money_expenses_tracker/data/repository/budget/budget_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buget_provider.g.dart';

@riverpod
class Budget extends _$Budget {
  @override
  Future<BudgetModel?> build() async {
    final budgetRepository = ref.watch(budgetRepositoryProvider);

    final budget = await budgetRepository.getBudget(type: BudgetType.monthly);

    return budget;
  }

  Future<void> createBudget(CreateBudgetModel budget) async {
    final budgetRepository = ref.read(budgetRepositoryProvider);
    await budgetRepository.createBudget(budget);
    ref.invalidateSelf();
  }

  Future<void> updateBudget(UpdateBudgetModel budget) async {
    final budgetRepository = ref.read(budgetRepositoryProvider);
    await budgetRepository.updateBudget(budget);
    ref.invalidateSelf();
  }
}
