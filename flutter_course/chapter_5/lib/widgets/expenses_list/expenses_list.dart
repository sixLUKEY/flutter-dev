import 'package:chapter_5/models/expense.dart';
import 'package:chapter_5/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });

  final List<Expense> expenses;

  @override
  Widget build(context) {
    return ListView.builder(
      itemBuilder: (ctx, idx) => ExpenseItem(
        expense: expenses[idx],
      ),
      itemCount: expenses.length,
    );
  }
}
