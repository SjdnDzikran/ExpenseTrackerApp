import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widget/expense_list.dart';
import 'package:flutter/material.dart';

class ExpensePage extends StatefulWidget {
  const ExpensePage({super.key});

  @override
  State<ExpensePage> createState() {
    return _ExpensePageState();
  }
}

class _ExpensePageState extends State<ExpensePage> {
  final List<Expense> _expenseList = [
    Expense(
      date: DateTime.now(),
      price: 10.99,
      title: 'Flutter Course',
      category: Category.work,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const Text('Modal Bottom Sheet'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Hello World!'),
            Expanded(
              child: ExpenseList(expenses: _expenseList),
            ),
          ],
        ),
      ),
    );
  }
}
