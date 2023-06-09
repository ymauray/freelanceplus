import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'database_provider.g.dart';

Future<String> get _databasePath async {
  final databasePath = Platform.isIOS
      ? join((await getLibraryDirectory()).path, 'freelanceplus.db')
      : join(await getDatabasesPath(), 'freelanceplus.db');
  return databasePath;
}

extension DatabaseExtension on Database {
  Future<void> erase() async {
    await close();
    await deleteDatabase(await _databasePath);
  }
}

@riverpod
FutureOr<Database> database(DatabaseRef ref) async {
  return await openDatabase(
    await _databasePath,
    version: 1,
    onCreate: (db, version) {
      _create(db);
      for (var i = 2; i <= version; i++) {
        _upgradeTo(db, i);
      }
    },
    onUpgrade: (db, oldVersion, newVersion) {
      for (var i = oldVersion + 1; i <= newVersion; i++) {
        _upgradeTo(db, i);
      }
    },
    onDowngrade: (db, oldVersion, newVersion) {
      throw Exception('Downgrade not supported');
    },
  );
}

void _create(Database db) {
  db
    ..execute('''
      CREATE TABLE properties (
        name TEXT NOT NULL PRIMARY KEY,
        value TEXT NOT NULL
      )
    ''')
    ..execute('''
      CREATE TABLE client (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        company TEXT NOT NULL,
        address TEXT NOT NULL,
        phone TEXT NOT NULL,
        email TEXT,
        contactPersonName TEXT,
        contactPersonPhone TEXT,
        contactPersonEmail TEXT,
        billingAddress TEXT,
        created_at INTEGER NOT NULL,
        updated_at INTEGER NOT NULL
      )
    ''')
    ..execute('''
      CREATE TABLE project (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        description TEXT,
        color INTEGER NOT NULL,
        is_archived INTEGER NOT NULL DEFAULT 0,
        is_deleted INTEGER NOT NULL DEFAULT 0,
        created_at INTEGER NOT NULL,
        updated_at INTEGER NOT NULL
      )
    ''')
    ..execute('''
      CREATE TABLE task (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        project_id INTEGER NOT NULL,
        name TEXT NOT NULL,
        description TEXT,
        is_completed INTEGER NOT NULL DEFAULT 0,
        is_archived INTEGER NOT NULL DEFAULT 0,
        is_deleted INTEGER NOT NULL DEFAULT 0,
        created_at INTEGER NOT NULL,
        updated_at INTEGER NOT NULL
      )
    ''')
    ..execute('''
      INSERT INTO properties (name, value) VALUES ('show_emboarding', 'true')
    ''');
}

void _upgradeTo(Database db, int version) {}
