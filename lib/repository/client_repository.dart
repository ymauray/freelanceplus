import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:freelanceplus/model/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'client_repository.g.dart';

@riverpod
class ClientRepository extends _$ClientRepository {
  Database? db;

  Future<List<Client>> _fetchClients() async {
    //db = await ref.watch(databaseProvider.future);
    //final rows = await db!.query('client');
    //final clients = rows.map(Client.fromJson).toList();

    //return clients;
    if (!await FlutterContacts.requestPermission(readonly: true)) {
      return [];
    } else {
      final contacts = await FlutterContacts.getContacts(
        withProperties: true,
        withGroups: true,
      );
      //final organizations = contacts
      //    .where(
      //      (contact) => contact.groups
      //          .map((group) => group.name)
      //          .contains('Freelance+'),
      //    )
      //    .fold(
      //      <Organization>[],
      //      (organizations, contact) =>
      //          [...contact.organizations, ...organizations],
      //    )
      //    .toSet()
      //    .toList()
      //    .where((organization) => organization.company != '')
      //    .toList()
      //  ..sort((a, b) => a.company.compareTo(b.company));
      //return organizations
      //    .map(
      //      (organization) => Client(
      //        company: organization.company,
      //        address: '',
      //        email: '',
      //        phone: '',
      //      ),
      //    )
      //    .toList();
      return contacts
          .map(
            (contact) => Client(
              company: contact.displayName,
              address: contact.groups.map((group) => group.name).join(', '),
              email: '',
              phone: '',
            ),
          )
          .toList();
    }
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
