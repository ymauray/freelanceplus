import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:freelanceplus/provider/database_provider.dart';
import 'package:freelanceplus/widget/home_page.dart';

class FreelancePlusApp extends ConsumerWidget {
  const FreelancePlusApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final database = ref.watch(databaseProvider);

    return MaterialApp(
      title: 'Project+',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.sourceSans3TextTheme(),
        appBarTheme: const AppBarTheme().copyWith(
          titleTextStyle: GoogleFonts.breeSerif(
            textStyle: Theme.of(context).textTheme.titleLarge,
            fontSize: 22,
            color: const Color(0xFF333333),
          ),
        ),
      ),
      home: database
              .whenData(
                (database) => HomePage(),
              )
              .value ??
          Container(),
    );
  }
}
