import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/common/extensions/context.dart';
import 'package:money_expenses_tracker/features/expense/providers/expenses_filter_provider.dart';
import 'package:money_expenses_tracker/features/expense/widgets/filter_dialog.dart';

class ExpensesFilterButton extends ConsumerWidget {
  const ExpensesFilterButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(expensesFilterProvider);

    return Stack(
      children: [
        IconButton(
          onPressed: () => showExpenseFilterDialog(context),
          icon: const Icon(Icons.filter_list),
        ),
        if (filter.numberOfAppliedFilters > 0)
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text(
                filter.numberOfAppliedFilters.toString(),
                style: context.textTheme.labelSmall?.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
