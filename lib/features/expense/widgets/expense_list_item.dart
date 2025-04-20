import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money_expenses_tracker/common/extensions/context.dart';
import 'package:money_expenses_tracker/data/models/expense/expense.dart';
import 'package:money_expenses_tracker/features/expense/pages/create_expense_page.dart';

class ExpenseListItem extends StatelessWidget {
  const ExpenseListItem({
    super.key,
    required this.expense,
  });

  final ExpenseModel expense;

  void _onTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CreateExpensePage(currentExpense: expense),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _onTap(context),
      child: ListTile(
        title: Row(
          children: [
            const Icon(Icons.attach_money),
            Expanded(
              child: Text(
                NumberFormat.currency(
                  symbol: expense.currency,
                ).format(expense.amount),
                style: context.textTheme.titleLarge,
              ),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (expense.category case final category?)
              Row(
                children: [
                  const Icon(Icons.category, size: 16),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      category,
                      style: context.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            if (expense.notes case final notes?)
              Row(
                children: [
                  const Icon(Icons.note, size: 16),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      notes,
                      style: context.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            if (expense.date case final date)
              Row(
                children: [
                  const Icon(Icons.calendar_today, size: 16),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      DateFormat.yMd().add_jm().format(date),
                      style: context.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
