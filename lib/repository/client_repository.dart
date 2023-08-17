import 'package:freelanceplus/model/client.dart';
import 'package:freelanceplus/provider/database_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'client_repository.g.dart';

class ClientRepository {
  ClientRepository(this.db);

  Database? db;

  Future<List<Client>> readAll() async {
    final rows = await db!.query('client');
    final clients = rows.map(Client.fromJson).toList();

    return clients;
  }

  Future<void> create(Map<String, dynamic> value) async {
    final now = DateTime.now().millisecondsSinceEpoch;
    await db!.insert(
      'client',
      {
        'created_at': now,
        'updated_at': now,
        ...value,
      },
    );
  }
}

@riverpod
Raw<FutureOr<ClientRepository>> clientRepository(
  ClientRepositoryRef ref,
) async {
  final db = await ref.watch(databaseProvider.future);
  return ClientRepository(db);
}
