import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_expenses_tracker/common/extensions/context.dart';
import 'package:money_expenses_tracker/data/repository/currency/currency_repository.dart';

class CurrencyTextField extends ConsumerWidget {
  const CurrencyTextField({
    super.key,
    required this.amountFieldName,
    this.initialAmount,
    required this.currencyFieldName,
    this.initialCurrency,
  });

  final String currencyFieldName;
  final String? initialCurrency;

  final String amountFieldName;
  final String? initialAmount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currencies = ref.watch(currencyRepositoryProvider).getCurrencies();

    return Row(
      spacing: 16,
      children: [
        SizedBox(
          width: 100,
          child: FormBuilderDropdown(
            name: currencyFieldName,
            initialValue: initialCurrency ?? Currency.MYR.name,
            alignment: Alignment.center,
            isDense: true,
            dropdownColor: context.theme.cardColor,
            decoration: InputDecoration(
              filled: true,
              fillColor: context.theme.cardColor,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              hintText: 'Currency',
              hintStyle: context.theme.textTheme.bodyMedium?.copyWith(
                color: context.theme.hintColor,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: context.theme.dividerColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: context.theme.primaryColor,
                  width: 2,
                ),
              ),
            ),
            items: currencies
                .map(
                  (currency) => DropdownMenuItem(
                    value: currency.name,
                    child: Text(currency.name),
                  ),
                )
                .toList(),
          ),
        ),
        Expanded(
          child: FormBuilderTextField(
            name: amountFieldName,
            initialValue: initialAmount,
            decoration: const InputDecoration(labelText: 'Amount'),
            keyboardType: const TextInputType.numberWithOptions(
              decimal: true,
            ),
            validator: FormBuilderValidators.compose(
              [
                FormBuilderValidators.required(),
                FormBuilderValidators.min(0),
                FormBuilderValidators.numeric(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
