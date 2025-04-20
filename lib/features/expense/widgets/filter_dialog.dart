import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/common/extensions/context.dart';
import 'package:money_expenses_tracker/data/local/db/expense/expense.dart';
import 'package:money_expenses_tracker/features/expense/pages/create_expense_page.dart';
import 'package:money_expenses_tracker/features/expense/providers/expenses_filter_provider.dart';
import 'package:money_expenses_tracker/features/expense/widgets/categories_drop_down_builder.dart';

Future<void> showExpenseFilterDialog(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    builder: (context) => const FilterDialog(),
  );
}

class FilterDialog extends ConsumerStatefulWidget {
  const FilterDialog({super.key});

  @override
  ConsumerState<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends ConsumerState<FilterDialog> {
  late ExpensesFilterState _localFilterState;
  final _formKey = GlobalKey<FormBuilderState>();
  void _updateLocalFilter(ExpensesFilterState newState) {
    setState(() {
      _localFilterState = newState;
    });
  }

  void _onApplyFilter() {
    ref.read(expensesFilterProvider.notifier).updateFilter(_localFilterState);
    Navigator.of(context).pop();
  }

  void _onResetFilter() {
    _updateLocalFilter(const ExpensesFilterState());
    _formKey.currentState?.patchValue({
      CreateExpenseFormField.category.name: null,
    });
  }

  @override
  void initState() {
    super.initState();
    _localFilterState = ref.read(expensesFilterProvider);
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: SafeArea(
        child: FormBuilder(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SortBySection(
                selectedSortBy: _localFilterState.sortBy,
                onSortByChanged: (sortBy) {
                  _updateLocalFilter(
                    _localFilterState.copyWith(sortBy: sortBy),
                  );
                },
              ),
              const SizedBox(height: 16),
              DateRangeSection(
                startDate: _localFilterState.startDate,
                endDate: _localFilterState.endDate,
                onStartDateChanged: (date) {
                  _updateLocalFilter(
                    _localFilterState.copyWith(startDate: date),
                  );
                },
                onEndDateChanged: (date) {
                  _updateLocalFilter(
                    _localFilterState.copyWith(endDate: date),
                  );
                },
              ),
              const SizedBox(height: 16),
              CategorySection(
                selectedCategory: _localFilterState.category,
                onCategoryChanged: (category) {
                  _updateLocalFilter(
                    _localFilterState.copyWith(category: category),
                  );
                },
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: _onResetFilter,
                    child: const Text('Reset'),
                  ),
                  const SizedBox(width: 8),
                  FilledButton(
                    onPressed: _onApplyFilter,
                    child: const Text('Apply'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SortBySection extends StatelessWidget {
  const SortBySection({
    super.key,
    required this.selectedSortBy,
    required this.onSortByChanged,
  });

  final ExpenseSortBy? selectedSortBy;
  final ValueChanged<ExpenseSortBy?> onSortByChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Text(
          'Sort by',
          style: context.textTheme.titleMedium,
        ),
        Wrap(
          spacing: 8,
          children: ExpenseSortBy.values.map((sortBy) {
            final isSelected = selectedSortBy == sortBy;
            return FilterChip(
              label: Text(sortBy.label),
              selected: isSelected,
              onSelected: (selected) {
                onSortByChanged(selected ? sortBy : null);
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}

class DateRangeSection extends StatelessWidget {
  const DateRangeSection({
    super.key,
    required this.startDate,
    required this.endDate,
    required this.onStartDateChanged,
    required this.onEndDateChanged,
  });

  final DateTime? startDate;
  final DateTime? endDate;
  final ValueChanged<DateTime?> onStartDateChanged;
  final ValueChanged<DateTime?> onEndDateChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Date Range',
          style: context.textTheme.titleMedium,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton.icon(
                onPressed: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: startDate ?? DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                  );
                  if (date != null) {
                    onStartDateChanged(date);
                  }
                },
                icon: const Icon(Icons.calendar_today),
                label: Text(
                  startDate != null
                      ? '${startDate!.day}/${startDate!.month}/${startDate!.year}'
                      : 'Start Date',
                ),
              ),
            ),
            const Text('to'),
            Expanded(
              child: TextButton.icon(
                onPressed: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: endDate ?? DateTime.now(),
                    firstDate: startDate ?? DateTime(2000),
                    lastDate: DateTime.now(),
                  );
                  if (date != null) {
                    onEndDateChanged(date);
                  }
                },
                icon: const Icon(Icons.calendar_today),
                label: Text(
                  endDate != null
                      ? '${endDate!.day}/${endDate!.month}/${endDate!.year}'
                      : 'End Date',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
    required this.selectedCategory,
    required this.onCategoryChanged,
  });

  final String? selectedCategory;
  final ValueChanged<String?> onCategoryChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Category',
          style: context.textTheme.titleMedium,
        ),
        CategoryDropDownBuilder(
          initialValue: selectedCategory,
          onChanged: onCategoryChanged,
        ),
      ],
    );
  }
}
