import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/common/widgets/data_state_builder.dart';
import 'package:money_expenses_tracker/data/models/category/category.dart';
import 'package:money_expenses_tracker/features/expense/pages/create_expense_page.dart';
import 'package:money_expenses_tracker/features/expense/providers/categories_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CategoryDropDownBuilder extends ConsumerWidget {
  const CategoryDropDownBuilder({
    super.key,
    this.initialValue,
  });

  final String? initialValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsyncValue = ref.watch(categoriesProvider);

    return categoriesAsyncValue.when(
      data: (categories) => CategoryDropDownFormField(
        initialValue: initialValue,
        categories: categories,
      ),
      error: (error, stack) => Text(error.toString()),
      loading: () => const Skeletonizer(
        child: SizedBox(
          height: 35,
          width: double.maxFinite,
        ),
      ),
    );
  }
}

class CategoryDropDownFormField extends StatelessWidget {
  const CategoryDropDownFormField({
    super.key,
    required this.categories,
    this.initialValue,
  });

  final List<CategoryModel> categories;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) {
      return const DataStateBuilder.empty(
        title: 'No categories found',
      );
    }

    return FormBuilderDropdown(
      name: CreateExpenseFormField.category.name,
      decoration: const InputDecoration(labelText: 'Category'),
      initialValue: initialValue,
      items: categories
          .map(
            (e) => DropdownMenuItem(
              value: e.name,
              child: Text(e.name),
            ),
          )
          .toList(),
    );
  }
}
