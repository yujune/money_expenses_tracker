import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:money_expenses_tracker/features/home/providers/pie_chart_data_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CategorisedExpensesPieChartBuilder extends ConsumerWidget {
  const CategorisedExpensesPieChartBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categorisedExpensesAsyncValue =
        ref.watch(totalExpensesByCategoryProvider);

    return categorisedExpensesAsyncValue.when(
      data: (data) => CategorisedExpensesPieChart(data: data),
      error: (error, stack) => const SizedBox.shrink(),
      loading: () => const Skeletonizer(
        child: SizedBox(
          width: double.maxFinite,
          height: 100,
        ),
      ),
    );
  }
}

class CategorisedExpensesPieChart extends StatelessWidget {
  const CategorisedExpensesPieChart({super.key, required this.data});

  final List<TotalExpensesByCategoryModel> data;

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 350,
      child: Card(
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: 16,
            children: [
              Text(
                '${DateFormat('MMMM yyyy').format(DateTime.now())} Expenses',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Expanded(
                child: PieChart(
                  PieChartData(
                    sections: data
                        .map(
                          (e) => PieChartSectionData(
                            value: e.amount,
                            title: e.category,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
