import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contacts_provider.g.dart';

@riverpod
class Contacts extends _$Contacts {
  @override
  Future<List<Contact>> build() {
    return _fetchContacts();
  }

  Future<List<Contact>> _fetchContacts() async {
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
      return contacts;
    }
  }
}
