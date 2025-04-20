import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/common/widgets/data_state_builder.dart';
import 'package:money_expenses_tracker/data/models/expense/expense.dart';
import 'package:money_expenses_tracker/features/expense/providers/expenses_provider.dart';
import 'package:money_expenses_tracker/features/expense/widgets/expense_list_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ExpensesListBuilder extends ConsumerWidget {
  const ExpensesListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expensesAsyncValue = ref.watch(expensesProvider);

    return expensesAsyncValue.when(
      data: (expenses) => ExpensesList(
        expenses: expenses,
      ),
      error: (error, stack) => const Center(
        child: Text('Fail to load expenses'),
      ),
      loading: () => Skeletonizer(
        child: ExpensesList(
          expenses: List.generate(
            10,
            (index) => ExpenseModel(
              id: index,
              amount: 0,
              date: DateTime.now(),
              currency: 'MYR',
              createdAt: DateTime.now().toIso8601String(),
              notes: 'Notes' * 6,
              category: 'Category' * 3,
            ),
          ),
        ),
      ),
    );
  }
}

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });

  final List<ExpenseModel> expenses;

  @override
  Widget build(BuildContext context) {
    return expenses.isEmpty
        ? const DataStateBuilder.empty(
            title: 'Empty',
          )
        : ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final expense = expenses[index];

              return ExpenseListItem(expense: expense);
            },
            itemCount: expenses.length,
          );
  }
}
