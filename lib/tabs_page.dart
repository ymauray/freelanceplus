import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freelanceplus/l10n/l10n_extension.dart';
import 'package:freelanceplus/provider/tab_index_provider.dart';
import 'package:freelanceplus/tab/clients_tab.dart';
import 'package:freelanceplus/tab/home_tab.dart';
import 'package:freelanceplus/tab/projects_tab.dart';
import 'package:freelanceplus/tab/settings_tab.dart';

class TabsPage extends ConsumerWidget {
  TabsPage({
    super.key,
  }) {
    FlutterNativeSplash.remove();
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
      body: _widget(context, tabIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabIndex,
        onTap: (value) => ref.read(tabIndexProvider.notifier).change(value),
        useLegacyColorScheme: false,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: context.t.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.people_outline),
            label: context.t.clients,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.book_outlined),
            label: context.t.projects,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings_outlined),
            label: context.t.settings,
          ),
        ],
      ),
    );
  }
}
