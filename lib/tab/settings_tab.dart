import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freelanceplus/l10n/l10n_extension.dart';
import 'package:freelanceplus/provider/database_provider.dart';
import 'package:freelanceplus/provider/tab_index_provider.dart';
import 'package:freelanceplus/tabs_page.dart';
import 'package:freelanceplus/widget/settings_action.dart';
import 'package:freelanceplus/widget/settings_group.dart';
import 'package:freelanceplus/widget/snack_bar_extension.dart';

class SettingsTab extends ConsumerWidget {
  const SettingsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final database = ref.watch(databaseProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.t.settings),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingsGroup(
              title: context.t.database,
              children: [
                SettingsAction(
                  title: Text(
                    context.t.backup,
                  ),
                  onTap: () {
                    ScaffoldMessenger.of(context)
                        .failure('Not implemented yet');
                  },
                ),
                SettingsAction(
                  title: Text(
                    context.t.restore,
                  ),
                  onTap: () {
                    ScaffoldMessenger.of(context)
                        .failure('Not implemented yet');
                  },
                ),
                SettingsAction(
                  title: Text(context.t.delete),
                  onTap: () {
                    database.whenData((database) async {
                      final result = await _showConfirmationDialog(context);
                      if (result != true) {
                        return;
                      }
                      await database.erase();
                      ref
                        ..invalidate(databaseProvider)
                        ..read(databaseProvider).whenData((database) async {
                          ref.read(tabIndexProvider.notifier).change(0);
                          await Navigator.of(context).pushReplacement(
                            MaterialPageRoute<TabsPage>(
                              builder: (BuildContext context) => TabsPage(),
                            ),
                          );
                        });
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<bool?> _showConfirmationDialog(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(context.t.delete),
          content: Text(context.t.confirmDeleteDatabase),
          actions: [
            TextButton(
              child: Text(context.t.yes),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            TextButton(
              child: Text(context.t.no),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
        );
      },
    );
  }
}
