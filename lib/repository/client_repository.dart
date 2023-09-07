import 'package:freelanceplus/model/client.dart';
import 'package:freelanceplus/provider/database_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'client_repository.g.dart';

class ClientRepository {
  ClientRepository(this._database);

  final Database _database;

  Future<Client> create(Client client) async {
    final json = client.toJson();

    final id = await _database.insert('clients', json);
    return client.copyWith(id: id);
  }

  Future<List<Client>> readAll() async {
    final result = await _database.query('clients');

    return result.map(Client.fromJson).toList();
  }

  Future<void> update(Client client) async {
    final json = client.toJson();

    await _database
        .update('clients', json, where: 'id = ?', whereArgs: [client.id]);
  }

  Future<void> delete(int id) async {
    await _database.delete('clients', where: 'id = ?', whereArgs: [id]);
  }
}

@riverpod
FutureOr<ClientRepository> clientRepository(ClientRepositoryRef ref) async {
  final db = await ref.read(appDatabaseProvider.future);
  return ClientRepository(db);
}
