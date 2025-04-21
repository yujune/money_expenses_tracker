import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/common/util/currency.dart';
import 'package:money_expenses_tracker/data/local/db/expense/expense.dart';
import 'package:money_expenses_tracker/data/models/expense/expense.dart';
import 'package:money_expenses_tracker/data/repository/currency/currency_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'expense_repository.g.dart';

abstract class IExpenseRepository {
  Future<List<ExpenseModel>> getExpenses({
    ExpenseSortBy? sortBy,
    String? category,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
    String? convertToCurrency,
  });
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
  Future<List<ExpenseModel>> getExpenses({
    ExpenseSortBy? sortBy,
    String? category,
    DateTime? startDate,
    DateTime? endDate,
    int? limit,
    String? convertToCurrency,
  }) async {
    final expenses = await localSource.getExpenses(
      sortBy: sortBy,
      category: category,
      startDate: startDate,
      endDate: endDate,
      limit: limit,
    );

    if (convertToCurrency != null) {
      return _convertExpensesToCurrency(
        expenses,
        convertToCurrency,
      );
    }

    return expenses;
  }

  @override
  Future<ExpenseModel> updateExpense(ExpenseModel expense) async {
    await localSource.updateExpense(expense);
    return expense;
  }

  Future<List<ExpenseModel>> _convertExpensesToCurrency(
    List<ExpenseModel> expenses,
    String targetCurrency,
  ) async {
    final targetCurrencyEnum = Currency.fromName(targetCurrency);
    return expenses.map(
      (expense) {
        final expenseCurrency = Currency.fromName(expense.currency);

        if (expenseCurrency.name == targetCurrencyEnum.name) {
          return expense;
        }

        final amountInNewCurrency = convertAmountToTargetCurrency(
          currentAmount: expense.amount,
          currentCurrency: expenseCurrency,
          targetCurrency: targetCurrencyEnum,
        );

        return expense.copyWith(amount: amountInNewCurrency);
      },
    ).toList();
  }
}
