import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/common/widgets/data_state_builder.dart';
import 'package:money_expenses_tracker/data/models/expense/expense.dart';
import 'package:money_expenses_tracker/features/expense/providers/expenses_provider.dart';
import 'package:money_expenses_tracker/features/expense/widgets/expense_list_item.dart';

class HomeExpensesListBuilder extends ConsumerWidget {
  const HomeExpensesListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expensesAsyncValue = ref.watch(expensesProvider);

    return expensesAsyncValue.when(
      data: (expenses) => HomeExpensesList(
        expenses: expenses,
      ),
      error: (error, stack) => const Center(
        child: Text('Fail to load expenses'),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class HomeExpensesList extends StatelessWidget {
  const HomeExpensesList({
    super.key,
    required this.expenses,
  });

  final List<ExpenseModel> expenses;

  @override
  Widget build(BuildContext context) {
    if (expenses.isEmpty) {
      return const DataStateBuilder.empty(
        title: 'No expenses',
      );
    }

    return ListView.builder(
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
