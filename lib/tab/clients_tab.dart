import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freelanceplus/l10n/l10n_extension.dart';
import 'package:freelanceplus/model/client.dart';
import 'package:freelanceplus/repository/client_repository.dart';

class ClientsTab extends ConsumerWidget {
  const ClientsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clients = ref.watch(clientRepositoryProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.t.clients),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_outlined),
            onPressed: () {
              Navigator.of(context).pushNamed('/client/add');
            },
          ),
        ],
      ),
      body: _ClientListView(clients: clients),
    );
  }
}

class _ClientListView extends ConsumerWidget {
  const _ClientListView({
    required this.clients,
  });

  final AsyncValue<List<Client>> clients;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return clients.when(
      data: (clients) {
        return ListView.builder(
          itemCount: clients.length,
          itemBuilder: (context, index) {
            final client = clients[index];

            return ListTile(
              title: Text(client.company),
              subtitle: Text(client.address),
              onTap: () {
                Navigator.of(context).pushNamed('/client/${client.id}');
              },
            );
          },
        );
      },
      error: (_, __) {
        return const Center(
          child: Text('Error'),
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
