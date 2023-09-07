import 'package:freelanceplus/model/client.dart';
import 'package:freelanceplus/repository/client_repository.dart';
import 'package:freelanceplus/tab/client/search_term_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'clients_provider.g.dart';

@riverpod
class Clients extends _$Clients {
  @override
  FutureOr<List<Client>> build() async {
    return await _load();
  }

  Future<List<Client>> _load() async {
    final searchTerm = ref.watch(searchTermProvider);
    final clientsRepository = await ref.read(clientRepositoryProvider.future);
    final clients = await clientsRepository.readAll();
    clients.sort((a, b) => a.name.compareTo(b.name));

    if (searchTerm == '') {
      return clients;
    }

    final value = clients
        .where(
          (client) =>
              client.name.toLowerCase().contains(searchTerm.toLowerCase()),
        )
        .toList();
    return value;
  }

  FutureOr<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_load);
  }
}
