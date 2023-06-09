import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormSection extends ConsumerWidget {
  const FormSection({
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
          padding:
              const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 8),
          child: Text(
            title.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        ColoredBox(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 16,
            ),
            child: Column(
              children: children,
            ),
          ),
        ),
      ],
    );
  }
}
