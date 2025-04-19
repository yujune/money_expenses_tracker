import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_expenses_tracker/common/extensions/context.dart';
import 'package:money_expenses_tracker/data/models/expense/expense.dart';
import 'package:money_expenses_tracker/features/expense/providers/expenses_provider.dart';
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
  const CreateExpensePage({super.key});

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

    await ref.read(expensesProvider.notifier).createExpense(expense);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormBuilderState>());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Expense'),
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
                child: Column(
                  spacing: 16,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CurrencyTextField(),
                    FormBuilderDateTimePicker(
                      name: CreateExpenseFormField.date.name,
                      decoration: const InputDecoration(labelText: 'Date'),
                      initialDate: DateTime.now(),
                    ),
                    const CategoryDropDownBuilder(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: FormBuilderTextField(
                        maxLines: 5,
                        name: CreateExpenseFormField.notes.name,
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
                          _onSubmit(
                            context: context,
                            ref: ref,
                            formKey: formKey,
                          );
                        },
                        child: const Text('Create'),
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
