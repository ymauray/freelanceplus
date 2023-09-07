import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'database_provider.g.dart';

@Riverpod(keepAlive: true)
class AppDatabase extends _$AppDatabase {
  @override
  FutureOr<Database> build() async {
    return await _initDB('freelanceplus.db');
  }

  Future<void> erase() async {}

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    //File(path).deleteSync();
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE clients (
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        name TEXT NOT NULL,
        email TEXT NOT NULL,
        phoneNumber TEXT,
        address TEXT,
        notes TEXT
      );
    ''');

    await db.execute('''
      CREATE TABLE projects (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          clientId INTEGER NOT NULL,
          name TEXT NOT NULL,
          description TEXT NOT NULL,
          startDate TEXT,
          endDate TEXT,
          budget REAL,
          FOREIGN KEY (clientId) REFERENCES clients (id)
      );
    ''');

    await db.execute('''
      CREATE TABLE contact_persons (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          clientId INTEGER NOT NULL,
          name TEXT NOT NULL,
          email TEXT NOT NULL,
          phoneNumber TEXT,
          role TEXT,
          FOREIGN KEY (clientId) REFERENCES clients (id)
      );
    ''');

    await db.execute('''
      CREATE TABLE project_contact (
          projectId INTEGER,
          contactPersonId INTEGER,
          PRIMARY KEY (projectId, contactPersonId),
          FOREIGN KEY (projectId) REFERENCES projects (id),
          FOREIGN KEY (contactPersonId) REFERENCES contact_persons (id)
      );
    ''');

    await db.execute('''
      CREATE TABLE properties (
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        name TEXT NOT NULL,
        value TEXT NOT NULL
      );
    ''');

    // Ajoutez d'autres tables ici
  }
}
