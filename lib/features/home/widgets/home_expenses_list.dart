import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/common/extensions/context.dart';
import 'package:money_expenses_tracker/common/widgets/data_state_builder.dart';
import 'package:money_expenses_tracker/data/models/expense/expense.dart';
import 'package:money_expenses_tracker/features/expense/pages/create_expense_page.dart';
import 'package:money_expenses_tracker/features/expense/pages/expenses_page.dart';
import 'package:money_expenses_tracker/features/expense/providers/recent_expenses_provider.dart';
import 'package:money_expenses_tracker/features/expense/widgets/expense_list_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeExpensesListBuilder extends ConsumerWidget {
  const HomeExpensesListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expensesAsyncValue = ref.watch(recentExpensesProvider);

    return expensesAsyncValue.when(
      data: (expenses) => HomeExpensesList(
        expenses: expenses,
      ),
      error: (error, stack) => const Center(
        child: Text('Fail to load expenses'),
      ),
      loading: () => Skeletonizer(
        child: HomeExpensesList(
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

class HomeExpensesList extends StatelessWidget {
  const HomeExpensesList({
    super.key,
    required this.expenses,
  });

  final List<ExpenseModel> expenses;

  void _onAddExpense(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CreateExpensePage(),
      ),
    );
  }

  void _onViewMore(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ExpensesPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.theme.cardColor,
      margin: const EdgeInsets.all(16),
      child: expenses.isEmpty
          ? DataStateBuilder.empty(
              title: 'No expenses',
              description: 'Add expenses to track your spending',
              buttonTitle: 'Add',
              onButtonTap: () => _onAddExpense(context),
            )
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Recent expenses'),
                      TextButton(
                        onPressed: () => _onViewMore(context),
                        child: const Text('View more'),
                      )
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final expense = expenses[index];

                    return ExpenseListItem(expense: expense);
                  },
                  itemCount: expenses.length,
                ),
              ],
            ),
    );
  }
}
