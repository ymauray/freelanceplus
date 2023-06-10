import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:freelanceplus/provider/database_provider.dart';
import 'package:freelanceplus/widget/client_form.dart';
import 'package:freelanceplus/widget/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class FreelancePlusApp extends ConsumerWidget {
  const FreelancePlusApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final database = ref.watch(databaseProvider);

    return MaterialApp(
      title: 'Project+',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        FormBuilderLocalizations.delegate,
        ...AppLocalizations.localizationsDelegates
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(
        //  seedColor: const Color(0xff78acf1),
        //),
        useMaterial3: true,
        textTheme: GoogleFonts.sourceSans3TextTheme(),
        scaffoldBackgroundColor: Colors.grey[50],
        appBarTheme: const AppBarTheme().copyWith(
          titleTextStyle: GoogleFonts.breeSerif(
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
      routes: {
        '/client/add': (context) => ClientForm(),
      },
    );
  }
}
