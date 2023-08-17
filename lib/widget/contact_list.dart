import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freelanceplus/l10n/l10n_extension.dart';
import 'package:freelanceplus/provider/contacts_provider.dart';

class ContactList extends ConsumerWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contacts = ref.watch(contactsProvider);

    return Scaffold(
      //appBar: AppBar(
      //  title: Text(context.t.contactImport),
      //  centerTitle: true,
      //),
      //body: _ContactListView(contacts: contacts),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            centerTitle: true,
            title: const Text('Kindacode.com'),
            bottom: AppBar(
              automaticallyImplyLeading: false,
              title: const SizedBox(
                width: double.infinity,
                height: 40,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for something',
                    ),
                  ),
                ),
              ),
            ),
          ),
          //contacts.when(
          //  data: (contacts) {
          //    return SliverList.builder(
          //      itemCount: contacts.length,
          //      itemBuilder: (context, index) => null,
          //    );
          //  },
          //  error: (_, __) {
          //    return Center(
          //      child: SliverToBoxAdapter(
          //        child: Text(context.t.contactImportError),
          //      ),
          //    );
          //  },
          //  loading: () {
          //    return const Center(
          //      child: SliverToBoxAdapter(
          //        child: CircularProgressIndicator(),
          //      ),
          //    );
          //  },
          //),
        ],
      ),
    );
  }
}

class _ContactListView extends StatelessWidget {
  const _ContactListView({
    required this.contacts,
  });

  final AsyncValue<List<Contact>> contacts;

  @override
  Widget build(BuildContext context) {
    return contacts.when(
      data: (contacts) {
        return ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            final contact = contacts[index];

            return ListTile(
              title: Text(contact.displayName),
              subtitle: const Text('+41234567890'),
              onTap: () {
                Navigator.of(context).pop(null);
              },
            );
          },
        );
      },
      error: (_, __) {
        return Center(
          child: Text(context.t.contactImportError),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
