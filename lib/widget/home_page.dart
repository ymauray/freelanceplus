import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freelanceplus/provider/tab_index_provider.dart';
import 'package:freelanceplus/tab/clients_tab.dart';
import 'package:freelanceplus/tab/home_tab.dart';
import 'package:freelanceplus/tab/projects_tab.dart';
import 'package:freelanceplus/tab/settings_tab.dart';

class HomePage extends ConsumerWidget {
  HomePage({
    super.key,
  }) {
    FlutterNativeSplash.remove();
  }

  String _title(BuildContext context, int tabIndex) {
    switch (tabIndex) {
      case 0:
        return AppLocalizations.of(context)!.home;
      case 1:
        return AppLocalizations.of(context)!.clients;
      case 2:
        return AppLocalizations.of(context)!.projects;
      case 3:
        return AppLocalizations.of(context)!.settings;
      default:
        return '';
    }
  }

  Widget _widget(BuildContext context, int tabIndex) {
    switch (tabIndex) {
      case 0:
        return const HomeTab();
      case 1:
        return const ClientsTab();
      case 2:
        return const ProjectsTab();
      case 3:
        return const SettingsTab();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabIndex = ref.watch(tabIndexProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          if (tabIndex == 1 || tabIndex == 2)
            IconButton(
              icon: const Icon(Icons.add_outlined),
              onPressed: () {},
            ),
        ],
        title: Text(_title(context, tabIndex)),
      ),
      body: _widget(context, tabIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabIndex,
        onTap: (value) => ref.read(tabIndexProvider.notifier).change(value),
        useLegacyColorScheme: false,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: AppLocalizations.of(context)!.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.people_outline),
            label: AppLocalizations.of(context)!.clients,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.book_outlined),
            label: AppLocalizations.of(context)!.projects,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings_outlined),
            label: AppLocalizations.of(context)!.settings,
          ),
        ],
      ),
    );
  }
}
