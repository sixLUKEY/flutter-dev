import 'package:chapter_5/models/expense.dart';
import 'package:chapter_5/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(context) {
    return ListView.builder(
      itemBuilder: (ctx, idx) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.75),
          margin: Theme.of(context).cardTheme.margin,
        ),
        key: ValueKey(
          expenses[idx],
        ),
        onDismissed: (direction) {
          onRemoveExpense(
            expenses[idx],
          );
        },
        child: ExpenseItem(
          expense: expenses[idx],
        ),
      ),
      itemCount: expenses.length,
    );
  }
}
