import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(
    this.expense, {
    super.key,
  });

  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Text(expense.price.toStringAsFixed(2)),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcon[expense.category]),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(expense.formattedDate),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}