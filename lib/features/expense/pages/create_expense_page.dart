import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_expenses_tracker/common/extensions/context.dart';
import 'package:money_expenses_tracker/common/widgets/common_progress_indicators.dart';
import 'package:money_expenses_tracker/data/models/expense/expense.dart';
import 'package:money_expenses_tracker/features/expense/providers/recent_expenses_provider.dart';
import 'package:money_expenses_tracker/features/expense/widgets/categories_drop_down_builder.dart';
import 'package:money_expenses_tracker/features/expense/widgets/currency_text_field.dart';

enum CreateExpenseFormField {
  currency,
  amount,
  notes,
  category,
  date,
}

class CreateExpensePage extends HookConsumerWidget {
  const CreateExpensePage({
    super.key,
    this.currentExpense,
  });

  final ExpenseModel? currentExpense;

  void _onSubmit({
    required BuildContext context,
    required WidgetRef ref,
    required GlobalKey<FormBuilderState> formKey,
  }) async {
    if (formKey.currentState?.saveAndValidate() != true) {
      return;
    }

    final amount =
        formKey.currentState?.fields[CreateExpenseFormField.amount.name]?.value;
    final notes =
        formKey.currentState?.fields[CreateExpenseFormField.notes.name]?.value;
    final category = formKey
        .currentState?.fields[CreateExpenseFormField.category.name]?.value;
    final date =
        formKey.currentState?.fields[CreateExpenseFormField.date.name]?.value;
    final currency = formKey
        .currentState?.fields[CreateExpenseFormField.currency.name]?.value;

    final expense = CreateExpenseModel(
      amount: double.parse(amount),
      notes: notes,
      category: category,
      currency: currency,
      date: date,
    );

    try {
      CommonLoading().showLoading(context, message: 'Creating expense');

      await ref.read(recentExpensesProvider.notifier).createExpense(expense);

      if (context.mounted) CommonLoading().stopLoading(context);

      if (context.mounted) Navigator.of(context).pop();
    } catch (error) {
      if (context.mounted) CommonLoading().stopLoading(context);
    }
  }

  void _onUpdate({
    required BuildContext context,
    required WidgetRef ref,
    required GlobalKey<FormBuilderState> formKey,
  }) async {
    if (formKey.currentState?.saveAndValidate() != true) {
      return;
    }

    final amount =
        formKey.currentState?.fields[CreateExpenseFormField.amount.name]?.value;
    final notes =
        formKey.currentState?.fields[CreateExpenseFormField.notes.name]?.value;
    final category = formKey
        .currentState?.fields[CreateExpenseFormField.category.name]?.value;
    final date =
        formKey.currentState?.fields[CreateExpenseFormField.date.name]?.value;
    final currency = formKey
        .currentState?.fields[CreateExpenseFormField.currency.name]?.value;

    final expense = currentExpense!.copyWith(
      amount: double.parse(amount),
      notes: notes,
      category: category,
      currency: currency,
      date: date,
    );

    try {
      CommonLoading().showLoading(context, message: 'Updating expense');

      await ref.read(recentExpensesProvider.notifier).updateExpense(expense);

      if (context.mounted) CommonLoading().stopLoading(context);

      if (context.mounted) Navigator.of(context).pop();
    } catch (error) {
      if (context.mounted) CommonLoading().stopLoading(context);
    }
  }

  void _onDelete({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    try {
      CommonLoading().showLoading(context, message: 'Deleting expense');

      await ref
          .read(recentExpensesProvider.notifier)
          .deleteExpense(currentExpense!.id);

      if (context.mounted) CommonLoading().stopLoading(context);

      if (context.mounted) Navigator.of(context).pop();
    } catch (error) {
      if (context.mounted) CommonLoading().stopLoading(context);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormBuilderState>());
    final isUpdate = currentExpense != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(isUpdate ? 'Update Expense' : 'Create Expense'),
        actions: [
          IconButton(
            onPressed: () {
              _onDelete(
                context: context,
                ref: ref,
              );
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Card(
            color: context.theme.cardColor,
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: FormBuilder(
                key: formKey,
                initialValue: isUpdate
                    ? {
                        CreateExpenseFormField.amount.name:
                            currentExpense?.amount.toString(),
                        CreateExpenseFormField.category.name:
                            currentExpense?.category,
                        CreateExpenseFormField.date.name: currentExpense?.date,
                        CreateExpenseFormField.currency.name:
                            currentExpense?.currency,
                        CreateExpenseFormField.notes.name:
                            currentExpense?.notes,
                      }
                    : {},
                child: Column(
                  spacing: 16,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CurrencyTextField(
                      currencyFieldName: CreateExpenseFormField.currency.name,
                      initialCurrency: currentExpense?.currency,
                      amountFieldName: CreateExpenseFormField.amount.name,
                      initialAmount:
                          isUpdate ? currentExpense?.amount.toString() : null,
                    ),
                    FormBuilderDateTimePicker(
                      name: CreateExpenseFormField.date.name,
                      decoration: const InputDecoration(labelText: 'Date'),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                      initialDate:
                          isUpdate ? currentExpense?.date : DateTime.now(),
                    ),
                    CategoryDropDownBuilder(
                      initialValue: currentExpense?.category,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: FormBuilderTextField(
                        maxLines: 5,
                        name: CreateExpenseFormField.notes.name,
                        initialValue: currentExpense?.notes,
                        decoration: const InputDecoration(
                          labelText: 'Notes',
                          hintText: 'Write your notes here...',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          fillColor: Colors.amber,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: FilledButton(
                        onPressed: () {
                          isUpdate
                              ? _onUpdate(
                                  context: context,
                                  ref: ref,
                                  formKey: formKey,
                                )
                              : _onSubmit(
                                  context: context,
                                  ref: ref,
                                  formKey: formKey,
                                );
                        },
                        child: Text(isUpdate ? 'Update' : 'Create'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
