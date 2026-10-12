import 'package:flutter/material.dart';

import '../../../../data/models/article.dart';
import '../../../widgets/article_tile.dart';

/// TODO: Ubah BookmarkItem menjadi ConsumerWidget
class BookmarkItem extends StatelessWidget {
  const BookmarkItem({super.key, required this.article});

  final Article article;

  void _remove(BuildContext context) {
    // TODO: Panggil ref.read(bookmarksProvider.notifier).toggle(article)
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: const Text('Dihapus dari Tersimpan'),
          action: SnackBarAction(
            label: 'Urungkan',
            onPressed: () {
              // TODO: Panggil notifier.toggle(article) lagi
            },
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Dismissible(
      key: ValueKey(article.url),
      direction: DismissDirection.endToStart,
      onDismissed: (_) => _remove(context),
      background: Container(
        color: scheme.errorContainer,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Icon(
          Icons.delete_outline_rounded,
          color: scheme.onErrorContainer,
        ),
      ),
      child: ArticleTile(article: article),
    );
  }
}
