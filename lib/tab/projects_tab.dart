import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freelanceplus/l10n/l10n_extension.dart';

class ProjectsTab extends ConsumerWidget {
  const ProjectsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.t.projects),
      ),
      body: Center(
        child: Text(context.t.projects),
      ),
    );
  }
}
