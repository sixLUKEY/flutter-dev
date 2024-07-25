import 'package:chapter_5/models/expense.dart';
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
      itemBuilder: (ctx, idx) {
        return Text(
          expenses[idx].title,
        );
      },
      itemCount: expenses.length,
    );
  }
}
