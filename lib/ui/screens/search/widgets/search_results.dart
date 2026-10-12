import 'package:flutter/material.dart';

import 'search_suggestions.dart';

// TODO: Ubah SearchResults menjadi ConsumerWidget
class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Gunakan ref.watch(searchQueryProvider)
    final query = '';
    if (query.isEmpty) return const SearchSuggestions();

    // TODO: Gunakan ref.watch(searchResultsProvider)
    return const SizedBox.shrink(); // Placeholder
  }
}
