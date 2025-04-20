import 'package:flutter/material.dart';
import 'package:money_expenses_tracker/features/expense/widgets/expenses_list_builder.dart';
import 'package:money_expenses_tracker/features/expense/widgets/filter_button.dart';

class ExpensesPage extends StatelessWidget {
  const ExpensesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses'),
        actions: const [
          ExpensesFilterButton(),
        ],
      ),
      body: const ExpensesListBuilder(),
    );
  }
}
