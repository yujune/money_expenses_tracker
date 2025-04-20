import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/data/local/db/budget/budget.dart';
import 'package:money_expenses_tracker/data/models/buget/buget.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'budget_repository.g.dart';

abstract class IBudgetRepository {
  Future<BudgetModel?> getBudget({BudgetType? type});
  Future<void> createBudget(CreateBudgetModel budget);
  Future<BudgetModel> updateBudget(BudgetModel budget);
  Future<void> deleteBudget(int id);
}

@riverpod
IBudgetRepository budgetRepository(Ref ref) {
  return BudgetRepository(
    localSource: ref.watch(budgetLocalSourceProvider),
  );
}

class BudgetRepository extends IBudgetRepository {
  BudgetRepository({required this.localSource});

  final BudgetLocalSource localSource;

  @override
  Future<void> createBudget(CreateBudgetModel budget) async {
    await localSource.insertBudget(budget);
  }

  @override
  Future<void> deleteBudget(int id) async {
    await localSource.deleteBudget(id);
  }

  @override
  Future<BudgetModel?> getBudget({BudgetType? type}) async {
    return await localSource.getBudget(type: type);
  }

  @override
  Future<BudgetModel> updateBudget(BudgetModel budget) async {
    await localSource.updateBudget(budget);
    return budget;
  }
}
