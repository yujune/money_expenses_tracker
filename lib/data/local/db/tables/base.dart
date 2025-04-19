import 'package:sqflite/sqlite_api.dart';

abstract class SqfliteLocalDbTable {
  String get tableName;
  Future<void> create(Database db);
}
