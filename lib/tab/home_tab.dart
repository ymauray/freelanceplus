import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freelanceplus/l10n/l10n_extension.dart';
import 'package:freelanceplus/provider/properties_repository.dart';
import 'package:freelanceplus/widget/snack_bar_extension.dart';
import 'package:google_fonts/google_fonts.dart';

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

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 64,
            ),
            Center(child: Image.asset('assets/img/icon_alpha.png')),
            Text(
              context.t.appTitle,
              style: GoogleFonts.breeSerif(fontSize: 64),
            ),
            Text(
              context.t.yourProjectsInYourPocket.toUpperCase(),
              style: GoogleFonts.sourceSans3(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
