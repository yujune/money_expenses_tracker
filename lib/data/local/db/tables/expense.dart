import 'package:money_expenses_tracker/data/local/db/tables/base.dart';
import 'package:money_expenses_tracker/data/local/db/tables/category.dart';
import 'package:sqflite/sqlite_api.dart';

class ExpenseLocalDbTable extends SqfliteLocalDbTable {
  static const String id = 'id';
  static const String amount = 'amount';
  static const String currency = 'currency';
  static const String notes = 'notes';
  static const String category = 'category';
  static const String date = 'date';
  static const String createdAt = 'createdAt';
  static const String updatedAt = 'updatedAt';

  static final _instance = ExpenseLocalDbTable._();

  ExpenseLocalDbTable._();

  factory ExpenseLocalDbTable() {
    return _instance;
  }

  @override
  String get tableName => 'expenses';

  @override
  Future<void> create(Database db) async {
    await db.execute('''CREATE TABLE IF NOT EXISTS $tableName (
      $id INTEGER PRIMARY KEY AUTOINCREMENT, 
      $amount REAL NOT NULL, 
      $currency TEXT NOT NULL,
      $notes TEXT, 
      $category TEXT,
      $date TEXT NOT NULL,
      $createdAt TEXT DEFAULT CURRENT_TIMESTAMP,
      $updatedAt TEXT,
      FOREIGN KEY ($category) REFERENCES ${CategoryLocalDbTable().tableName}(${CategoryLocalDbTable.name})
      )''');
  }
}
