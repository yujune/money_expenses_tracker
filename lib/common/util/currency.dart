import 'package:money_expenses_tracker/data/repository/currency/currency_repository.dart';

/// Converts an amount from one currency to another using USD as the base currency.
///
/// This function performs currency conversion by first converting the source currency
/// to USD and then converting from USD to the target currency. The conversion uses
/// the exchange rates defined in [exchangeRateToUsd].
///
/// Example:
/// ```dart
/// final amountInEur = convertAmountToTargetCurrency(
///   currentCurrency: Currency.USD,
///   currentAmount: 100.0,
///   targetCurrency: Currency.EUR,
/// );
/// ```
///
/// [currentCurrency] The source currency to convert from.
/// [currentAmount] The amount to convert.
/// [targetCurrency] The target currency to convert to.
/// Returns the converted amount in the target currency.
double convertAmountToTargetCurrency({
  required Currency currentCurrency,
  required double currentAmount,
  required Currency targetCurrency,
}) {
  final currentCurrencyToUsdRate = exchangeRateToUsd[currentCurrency] ?? 1.0;

  final currentAmountInUsd = currentAmount * currentCurrencyToUsdRate;

  final targetCurrencyToUsdRate = exchangeRateToUsd[targetCurrency] ?? 1.0;

  final targetCurrencyAmount = currentAmountInUsd / targetCurrencyToUsdRate;

  return targetCurrencyAmount;
}
