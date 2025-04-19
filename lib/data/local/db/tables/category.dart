import 'package:money_expenses_tracker/data/local/db/tables/base.dart';
import 'package:sqflite/sqlite_api.dart';

class CategoryLocalDbTable extends SqfliteLocalDbTable {
  static const String id = 'id';
  static const String name = 'name';
  static const String createdAt = 'createdAt';
  static const String updatedAt = 'updatedAt';

  static final _instance = CategoryLocalDbTable._();

  CategoryLocalDbTable._();

  factory CategoryLocalDbTable() {
    return _instance;
  }

  @override
  String get tableName => 'categories';

  @override
  Future<void> create(Database db) async {
    await db.execute(
      '''CREATE TABLE IF NOT EXISTS $tableName (
      $id INTEGER PRIMARY KEY AUTOINCREMENT, 
      $name TEXT NOT NULL,
      $createdAt TEXT DEFAULT CURRENT_TIMESTAMP,
      $updatedAt TEXT
      )''',
    );
  }
}
