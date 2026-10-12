import 'package:flutter/material.dart';

/// TODO: Ubah SearchSuggestions menjadi ConsumerWidget
class SearchSuggestions extends StatelessWidget {
  const SearchSuggestions({super.key});

  static const _topics = [
    'Artificial Intelligence',
    'Climate',
    'Economy',
    'Football',
    'Space',
    'Startup',
    'Health',
    'Election',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Topik populer', style: theme.textTheme.titleSmall),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            for (final topic in _topics)
              ActionChip(
                avatar: const Icon(Icons.trending_up_rounded, size: 18),
                label: Text(topic),
                onPressed: () {
                  // TODO: submit topik ke searchQueryProvider
                },
              ),
          ],
        ),
      ],
    );
  }
}
