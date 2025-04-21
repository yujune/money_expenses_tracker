import 'package:flutter_test/flutter_test.dart';
import 'package:money_expenses_tracker/common/util/currency.dart';
import 'package:money_expenses_tracker/data/repository/currency/currency_repository.dart';

void main() {
  group('convertAmountToTargetCurrency', () {
    test('should convert USD to MYR correctly', () {
      // Given
      const currentCurrency = Currency.USD;
      const currentAmount = 100.0;
      const targetCurrency = Currency.MYR;

      // When
      final result = convertAmountToTargetCurrency(
        currentCurrency: currentCurrency,
        currentAmount: currentAmount,
        targetCurrency: targetCurrency,
      );

      // Then
      // 100 USD * 1.0 (USD rate) / 0.23 (MYR rate) = 434.782...
      expect(result, closeTo(434.782, 0.001));
    });

    test('should convert MYR to USD correctly', () {
      // Given
      const currentCurrency = Currency.MYR;
      const currentAmount = 100.0;
      const targetCurrency = Currency.USD;

      // When
      final result = convertAmountToTargetCurrency(
        currentCurrency: currentCurrency,
        currentAmount: currentAmount,
        targetCurrency: targetCurrency,
      );

      // Then
      // 100 MYR * 0.23 (MYR rate) / 1.0 (USD rate) = 23.0
      expect(result, equals(23.0));
    });

    test('should convert USD to EUR correctly', () {
      // Given
      const currentCurrency = Currency.USD;
      const currentAmount = 100.0;
      const targetCurrency = Currency.EUR;

      // When
      final result = convertAmountToTargetCurrency(
        currentCurrency: currentCurrency,
        currentAmount: currentAmount,
        targetCurrency: targetCurrency,
      );

      // Then
      // 100 USD * 1.0 (USD rate) / 1.1 (EUR rate) = 90.909...
      expect(result, closeTo(90.909, 0.001));
    });

    test('should convert MYR to CNY correctly', () {
      // Given
      const currentCurrency = Currency.MYR;
      const currentAmount = 100.0;
      const targetCurrency = Currency.CNY;

      // When
      final result = convertAmountToTargetCurrency(
        currentCurrency: currentCurrency,
        currentAmount: currentAmount,
        targetCurrency: targetCurrency,
      );

      // Then
      // 100 MYR * 0.23 (MYR rate) / 0.14 (CNY rate) = 164.285...
      expect(result, closeTo(164.285, 0.001));
    });

    test('should convert EUR to GBP correctly', () {
      // Given
      const currentCurrency = Currency.EUR;
      const currentAmount = 100.0;
      const targetCurrency = Currency.GBP;

      // When
      final result = convertAmountToTargetCurrency(
        currentCurrency: currentCurrency,
        currentAmount: currentAmount,
        targetCurrency: targetCurrency,
      );

      // Then
      // 100 EUR * 1.1 (EUR rate) / 1.25 (GBP rate) = 88.0
      expect(result, closeTo(88.0, 0.001));
    });

    test('should return same amount when converting to same currency', () {
      // Given
      const currentCurrency = Currency.USD;
      const currentAmount = 100.0;
      const targetCurrency = Currency.USD;

      // When
      final result = convertAmountToTargetCurrency(
        currentCurrency: currentCurrency,
        currentAmount: currentAmount,
        targetCurrency: targetCurrency,
      );

      // Then
      expect(result, equals(100.0));
    });

    test('should handle zero amount correctly', () {
      // Given
      const currentCurrency = Currency.USD;
      const currentAmount = 0.0;
      const targetCurrency = Currency.EUR;

      // When
      final result = convertAmountToTargetCurrency(
        currentCurrency: currentCurrency,
        currentAmount: currentAmount,
        targetCurrency: targetCurrency,
      );

      // Then
      expect(result, equals(0.0));
    });

    test('should handle negative amount correctly', () {
      // Given
      const currentCurrency = Currency.USD;
      const currentAmount = -100.0;
      const targetCurrency = Currency.EUR;

      // When
      final result = convertAmountToTargetCurrency(
        currentCurrency: currentCurrency,
        currentAmount: currentAmount,
        targetCurrency: targetCurrency,
      );

      // Then
      expect(result, closeTo(-90.909, 0.001));
    });

    test('should handle large amounts correctly', () {
      // Given
      const currentCurrency = Currency.USD;
      const currentAmount = 1000000.0;
      const targetCurrency = Currency.JPY;

      // When
      final result = convertAmountToTargetCurrency(
        currentCurrency: currentCurrency,
        currentAmount: currentAmount,
        targetCurrency: targetCurrency,
      );

      // Then
      // 1,000,000 USD * 1.0 (USD rate) / 0.007 (JPY rate) = 142,857,142.857...
      expect(result, closeTo(142857142.857, 0.001));
    });
  });
}
