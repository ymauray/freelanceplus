import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsAction extends ConsumerWidget {
  const SettingsAction({
    required this.title,
    this.onTap,
    super.key,
  });

  final Widget title;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      dense: true,
      title: title,
      onTap: onTap,
    );
  }
}
