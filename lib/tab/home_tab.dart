import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freelanceplus/provider/properties_repository.dart';
import 'package:freelanceplus/widget/snack_bar_extension.dart';

class HomeTab extends ConsumerWidget {
  const HomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref
        .watch(propertiesRepositoryProvider)
        .whenData((propertiesRepository) async {
      final showEmboarding = await propertiesRepository.get('show_emboarding');
      if ('true' == showEmboarding) {
        ScaffoldMessenger.of(context).success('Emboarding');
        await propertiesRepository.set('show_emboarding', 'false');
      }
    });

    return Container();
  }
}
