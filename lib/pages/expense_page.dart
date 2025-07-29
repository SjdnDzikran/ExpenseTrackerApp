import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widget/expenses/expense_list.dart';
import 'package:expense_tracker_app/widget/expenses/new_expense.dart';
import 'package:flutter/material.dart';

class ExpensePage extends StatefulWidget {
  const ExpensePage({super.key});

  @override
  State<ExpensePage> createState() => _ExpensePageState();
}

class _ExpensePageState extends State<ExpensePage> {
  final List<Expense> _expenseList = [
    Expense(
      date: DateTime.now(),
      price: 10.99,
      title: 'Flutter Course',
      category: Category.work,
    ),
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
      builder: (ctx) => const NewExpense(),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const Text('Hello World!'),
            Expanded(
              child: ExpenseList(expenses: _expenseList),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openAddExpenseOverlay,
        child: const Icon(Icons.add),
      ),
    );
  }
}
