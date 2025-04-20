import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_expenses_tracker/common/extensions/context.dart';
import 'package:money_expenses_tracker/common/widgets/common_progress_indicators.dart';
import 'package:money_expenses_tracker/data/models/buget/buget.dart';
import 'package:money_expenses_tracker/features/buget/providers/buget_provider.dart';
import 'package:money_expenses_tracker/features/expense/widgets/currency_text_field.dart';

enum CreateBudgetFormField {
  currency,
  amount,
}

class CreateBudgetPage extends HookConsumerWidget {
  const CreateBudgetPage({super.key});

  void _onSubmit({
    required BuildContext context,
    required WidgetRef ref,
    required GlobalKey<FormBuilderState> formKey,
  }) async {
    if (formKey.currentState?.saveAndValidate() != true) {
      return;
    }

    try {
      CommonLoading().showLoading(context, message: 'Creating budget');

      final amount = formKey
          .currentState?.fields[CreateBudgetFormField.amount.name]?.value;
      final currency = formKey
          .currentState?.fields[CreateBudgetFormField.currency.name]?.value;

      final budget = CreateBudgetModel(
        amount: double.parse(amount),
        type: BudgetType.monthly,
      );

      await ref.read(budgetProvider.notifier).createBudget(budget);

      if (context.mounted) CommonLoading().stopLoading(context);

      if (context.mounted) Navigator.of(context).pop();
    } catch (error) {
      if (context.mounted) CommonLoading().stopLoading(context);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormBuilderState>());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Budget'),
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
