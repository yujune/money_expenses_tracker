import 'package:money_expenses_tracker/data/local/db/tables/base.dart';
import 'package:sqflite/sqlite_api.dart';

class BudgetLocalDbTable extends SqfliteLocalDbTable {
  static const String id = 'id';
  static const String amount = 'amount';
  static const String type = 'type';
  static const String currency = 'currency';
  static const String createdAt = 'createdAt';
  static const String updatedAt = 'updatedAt';

  static final _instance = BudgetLocalDbTable._();

  BudgetLocalDbTable._();

  factory BudgetLocalDbTable() {
    return _instance;
  }

  @override
  String get tableName => 'budgets';

  @override
  Future<void> create(Database db) async {
    await db.execute(
      '''CREATE TABLE IF NOT EXISTS $tableName (
      $id INTEGER PRIMARY KEY AUTOINCREMENT, 
      $amount REAL NOT NULL, 
      $type TEXT NOT NULL,
      $currency TEXT NOT NULL,
      $createdAt TEXT DEFAULT CURRENT_TIMESTAMP,
      $updatedAt TEXT
      )''',
    );
  }
}
