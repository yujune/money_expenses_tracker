import 'package:flutter/material.dart';
import 'package:money_expenses_tracker/features/buget/widgets/budget_dashboard.dart';
import 'package:money_expenses_tracker/features/expense/pages/create_expense_page.dart';
import 'package:money_expenses_tracker/features/home/widgets/home_expenses_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onAddTap({required BuildContext context}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CreateExpensePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Money Expenses Tracker'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            BudgetDashboardBuilder(),
            HomeExpensesListBuilder(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _onAddTap(context: context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
