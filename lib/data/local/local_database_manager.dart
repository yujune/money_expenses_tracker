import 'package:money_expenses_tracker/data/local/db/tables/base.dart';
import 'package:money_expenses_tracker/data/local/db/tables/budget.dart';
import 'package:money_expenses_tracker/data/local/db/tables/category.dart';
import 'package:money_expenses_tracker/data/local/db/tables/expense.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteDbManager {
  SqfliteDbManager();

  static late Database db;

  final version = 1;

  final List<SqfliteLocalDbTable> _tables = [
    CategoryLocalDbTable(),
    BudgetLocalDbTable(),
    ExpenseLocalDbTable(),
  ];

  Future<void> init() async {
    String path = join(await getDatabasesPath(), 'money_expenses_tracker.db');

    db = await openDatabase(
      path,
      version: version,
      onCreate: (db, version) async {
        await Future.wait(
          _tables.map(
            (table) => table.create(db),
          ),
        );
      },
      // onOpen: (db) {
      //   // db.delete(
      //   //   CategoryLocalDbTable().tableName,
      //   // );
      // },
    );
  }
}
