import 'package:uuid/uuid.dart';

var uuid = const Uuid();

enum Category { food, travel, leisure, work}

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
