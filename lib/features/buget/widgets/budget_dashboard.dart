import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:money_expenses_tracker/common/extensions/context.dart';
import 'package:money_expenses_tracker/common/widgets/data_state_builder.dart';
import 'package:money_expenses_tracker/data/models/buget/buget.dart';
import 'package:money_expenses_tracker/data/repository/currency/currency_repository.dart';
import 'package:money_expenses_tracker/features/buget/pages/create_budget_page.dart';
import 'package:money_expenses_tracker/features/buget/providers/budget_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BudgetDashboardBuilder extends ConsumerWidget {
  const BudgetDashboardBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final budgetAsyncValue = ref.watch(budgetProvider);

    return budgetAsyncValue.when(
      data: (data) => BudgetDashboard(budget: data),
      error: (error, stack) => const DataStateBuilder.error(),
      loading: () => const Skeletonizer(
        child: BudgetDashboard(
          budget: BudgetModel(
            id: 1,
            amount: 100,
            type: BudgetType.monthly,
            totalSpent: 100,
            currency: 'MYR',
          ),
        ),
      ),
    );
  }
}

class BudgetDashboard extends StatelessWidget {
  const BudgetDashboard({
    super.key,
    required this.budget,
  });

  final BudgetModel? budget;

  void _onCreateBudgetTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CreateBudgetPage()),
    );
  }

  void _onEditTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CreateBudgetPage(
          currentBudget: budget,
        ),
      ),
    );
  }

  String _formatCurrency({
    required double amount,
    required Currency currency,
  }) {
    return NumberFormat.simpleCurrency(
      locale: currency.locale,
      name: currency.name,
    ).format(amount);
  }

  String _getCurrentMonthYear() {
    return DateFormat('MMMM yyyy').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    if (budget == null) {
      return Card(
        margin: const EdgeInsets.all(8),
        color: context.theme.colorScheme.primary,
        child: DataStateBuilder.empty(
          titleColor: Colors.white,
          textColor: Colors.white,
          buttonColor: context.theme.colorScheme.secondaryContainer,
          buttonTextColor: Colors.black,
          title: 'No budget',
          description: 'Create a budget to keep track of your expenses',
          buttonTitle: 'Start',
          onButtonTap: () {
            _onCreateBudgetTap(context);
          },
        ),
      );
    }

    final remaining = budget!.amount - budget!.totalSpent;
    final progress = budget!.totalSpent / budget!.amount;
    final budgetCurrency = Currency.fromName(budget!.currency);

    return Card(
      margin: const EdgeInsets.all(8),
      color: context.theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Monthly Budget',
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      _getCurrentMonthYear(),
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: Colors.white.withValues(alpha: .8),
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () => _onEditTap(context),
                  child: Text(
                    'Edit',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'Remaining',
              style: context.textTheme.bodyMedium?.copyWith(
                color: Colors.white.withValues(alpha: .8),
              ),
            ),
            Text(
              _formatCurrency(
                amount: remaining,
                currency: budgetCurrency,
              ),
              style: context.textTheme.displayMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.white.withValues(alpha: .2),
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Color(0xFF2ECC71)),
                minHeight: 8,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Budget',
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: Colors.white.withValues(alpha: .8),
                        ),
                      ),
                      Text(
                        _formatCurrency(
                          amount: budget!.amount,
                          currency: budgetCurrency,
                        ),
                        style: context.textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Spent',
                        style: context.theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.white.withValues(alpha: .8),
                        ),
                      ),
                      Text(
                        _formatCurrency(
                          amount: budget!.totalSpent,
                          currency: budgetCurrency,
                        ),
                        style: context.theme.textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
