import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widget/expenses/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({
    super.key,
    required this.expenses,
  });

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return ListView.builder(
            itemCount: expenses.length,
            itemBuilder: (context, index) => ExpenseItem(expenses[index]),
          );
        } else {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 100, // Set a more precise fixed height for each item based on content
            ),
            itemCount: expenses.length,
            itemBuilder: (context, index) => ExpenseItem(expenses[index]),
          );
        }
      },
    );
  }
}
