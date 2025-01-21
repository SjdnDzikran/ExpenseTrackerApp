import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

enum Category { food, travel, leisure, work}

const categoryIcon = {
  Category.food: Icons.restaurant,
  Category.leisure: Icons.chair_rounded,
  Category.travel: Icons.flight_takeoff_rounded,
  Category.work: Icons.work_rounded,
};

class Expense {
  final String id;
  final String title;
  final double price;
  final DateTime date;
  final Category category;

  Expense({
    required this.date,
    required this.price,
    required this.title,
    required this.category,
  }) : id = uuid.v4();
}