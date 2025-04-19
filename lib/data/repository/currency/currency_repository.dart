import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'currency_repository.g.dart';

enum Currency {
  USD,
  EUR,
  GBP,
  JPY,
  INR,
  AUD,
  CAD,
  CNY,
  CHF,
  SEK,
  MYR,
}

abstract class ICurrencyRepository {
  List<Currency> getCurrencies();

  Future<Map<Currency, double>> getExchangeRatesToUSD();
}

@riverpod
ICurrencyRepository currencyRepository(Ref ref) {
  return CurrencyRepository();
}

class CurrencyRepository extends ICurrencyRepository {
  @override
  List<Currency> getCurrencies() {
    return Currency.values;
  }

  @override
  Future<Map<Currency, double>> getExchangeRatesToUSD() async {
    return {
      Currency.USD: 1.0,
      Currency.EUR: 1.1,
      Currency.GBP: 1.25,
      Currency.JPY: 0.007,
      Currency.INR: 0.012,
      Currency.AUD: 0.66,
      Currency.CAD: 0.74,
      Currency.CNY: 0.14,
      Currency.CHF: 1.1,
      Currency.SEK: 0.092,
      Currency.MYR: 0.23,
    };
  }
}
