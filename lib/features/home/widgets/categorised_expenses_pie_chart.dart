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

  final TotalCategoryExpensesModel data;

  @override
  Widget build(BuildContext context) {
    if (data.categoryExpenses.isEmpty) {
      return const SizedBox.shrink();
    }

    return Card(
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
            SizedBox(
              height: 250,
              child: PieChart(
                PieChartData(
                  sections: data.categoryExpenses
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
            ...data.categoryExpenses.map(
              (e) {
                return ListTile(
                  title: Text(e.category),
                  subtitle: Column(
                    spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${(e.amount / data.amount * 100).toStringAsFixed(2)}%',
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          value: e.amount / data.amount,
                        ),
                      ),
                    ],
                  ),
                  trailing: Text(
                    '\$${e.amount.toStringAsFixed(2)}',
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
