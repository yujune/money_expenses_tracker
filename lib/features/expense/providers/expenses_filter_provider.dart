import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_expenses_tracker/data/local/db/expense/expense.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'expenses_filter_provider.freezed.dart';
part 'expenses_filter_provider.g.dart';

@freezed
abstract class ExpensesFilterState with _$ExpensesFilterState {
  const ExpensesFilterState._();

  const factory ExpensesFilterState({
    ExpenseSortBy? sortBy,
    DateTime? startDate,
    DateTime? endDate,
    String? category,
  }) = _ExpensesFilterState;

  int get numberOfAppliedFilters => [
        sortBy,
        startDate,
        endDate,
        category,
      ].whereType<Object>().length;
}

@riverpod
class ExpensesFilter extends _$ExpensesFilter {
  @override
  ExpensesFilterState build() {
    return const ExpensesFilterState();
  }

  void updateFilter(ExpensesFilterState filter) {
    state = filter;
  }

  void resetFilter() {
    state = const ExpensesFilterState();
  }
}
