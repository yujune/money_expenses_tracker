import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_expenses_tracker/data/local/db/tables/category.dart';
import 'package:money_expenses_tracker/data/local/local_database_manager.dart';
import 'package:money_expenses_tracker/data/models/category/category.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'category.g.dart';

@riverpod
CategoryLocalSource categoryLocalSource(Ref ref) {
  return CategoryLocalSource(SqfliteDbManager.db);
}

class CategoryLocalSource {
  final Database db;

  CategoryLocalSource(this.db);

  Future<void> insertCategories(List<CategoryModel> categories) async {
    Batch batch = db.batch();

    for (var category in categories) {
      batch.insert(
        CategoryLocalDbTable().tableName,
        category.toJson(),
      );
    }
    await batch.commit(noResult: true);
  }

  Future<List<CategoryModel>> getCategories() async {
    final results = await db.query(
      CategoryLocalDbTable().tableName,
    );

    return results.map((result) => CategoryModel.fromJson(result)).toList();
  }
}
