import 'package:freelanceplus/model/client.dart';
import 'package:freelanceplus/provider/database_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'client_repository.g.dart';

@riverpod
class ClientRepository extends _$ClientRepository {
  Database? db;

  Future<List<Client>> _fetchClients() async {
    db = await ref.watch(databaseProvider.future);
    final rows = await db!.query('client');
    final clients = rows.map(Client.fromJson).toList();

    return clients;
  }

  @override
  FutureOr<List<Client>> build() async {
    return _fetchClients();
  }

  Future<void> create(Map<String, dynamic> value) async {
    final now = DateTime.now().millisecondsSinceEpoch;
    state = await AsyncValue.guard(() async {
      await db!.insert(
        'client',
        {
          'created_at': now,
          'updated_at': now,
          ...value,
        },
      );
      return _fetchClients();
    });
  }
}
