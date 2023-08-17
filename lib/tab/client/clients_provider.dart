import 'package:freelanceplus/model/client.dart';
import 'package:freelanceplus/repository/client_repository.dart';
import 'package:freelanceplus/tab/client/search_term_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'clients_provider.g.dart';

@riverpod
class Clients extends _$Clients {
  @override
  FutureOr<List<Client>> build() async {
    final searchTerm = ref.watch(searchTermProvider);
    final clientsRepository = await ref.read(clientRepositoryProvider);
    final clients = await clientsRepository.readAll();

    if (searchTerm == '') {
      return clients;
    }

    return clients
        .where(
          (client) =>
              client.company.toLowerCase().contains(searchTerm.toLowerCase()),
        )
        .toList();
  }
}
