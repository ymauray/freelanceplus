import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freelanceplus/l10n/l10n_extension.dart';
import 'package:freelanceplus/tab/client/clients_provider.dart';
import 'package:freelanceplus/tab/client/search_term_provider.dart';

class ClientsTab extends ConsumerWidget {
  const ClientsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: TextField(
                  onChanged: (value) =>
                      ref.read(searchTermProvider.notifier).search(value),
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search_outlined),
                  ),
                ),
              ),
              const Divider(),
            ],
          ),
        ),
        title: Text(context.t.clients),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add_outlined),
            onPressed: () {
              Navigator.of(context).pushNamed('/client/add');
            },
          ),
        ],
      ),
      body: const _ClientListView(),
    );
  }
}

class _ClientListView extends ConsumerWidget {
  const _ClientListView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clients = ref.watch(clientsProvider);

    return clients.when(
      data: (clients) {
        return ListView.separated(
          itemCount: clients.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            final client = clients[index];

            return ListTile(
              title: Text(client.company),
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
