import 'package:freelanceplus/provider/database_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'properties_repository.g.dart';

class PropertiesRepository {
  PropertiesRepository(this._database, this._appDatabase);

  final Database _database;
  final AppDatabase _appDatabase;

  Future<void> erase() async {
    await _appDatabase.erase();
  }

  Future<void> set(String name, String value) async {
    await _database.insert(
      'properties',
      <String, Object?>{
        'name': name,
        'value': value,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<String?> get(String name) async {
    final result = await _database.query(
      'properties',
      where: 'name = ?',
      whereArgs: <Object?>[name],
    );
    if (result.isEmpty) {
      return null;
    }
    return result.first['value'] as String?;
  }
}

@riverpod
Future<PropertiesRepository> propertiesRepository(
  PropertiesRepositoryRef ref,
) async {
  final database = await ref.read(appDatabaseProvider.future);
  final appDatabase = ref.read(appDatabaseProvider.notifier);
  return PropertiesRepository(database, appDatabase);
}
