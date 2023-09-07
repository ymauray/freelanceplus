import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsGroup extends ConsumerWidget {
  const SettingsGroup({
    required this.title,
    required this.children,
    super.key,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff78acf1).withAlpha(32),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: children.fold(
                <Widget>[],
                (previousValue, element) => [
                  ...previousValue,
                  if (previousValue.isNotEmpty)
                    Divider(
                      height: 0,
                      color: const Color(0xff78acf1).withAlpha(64),
                    ),
                  element,
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
