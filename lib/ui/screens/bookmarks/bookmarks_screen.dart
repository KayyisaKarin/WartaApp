import 'package:flutter/material.dart';

import '../../../../data/models/article.dart';
import '../../widgets/empty_state.dart';
import '../../widgets/theme_toggle_button.dart';
import 'widgets/bookmark_item.dart';

/// TODO: Ubah BookmarksScreen menjadi ConsumerWidget
class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Menampilkan daftar kosong untuk sementara
    final bookmarks = <Article>[];

    return CustomScrollView(
      slivers: [
        const SliverAppBar.large(
          title: Text('Tersimpan'),
          actions: [ThemeToggleButton(), SizedBox(width: 8)],
        ),
        if (bookmarks.isEmpty)
          const SliverFillRemaining(
            hasScrollBody: false,
            child: EmptyState(
              icon: Icons.bookmark_border_rounded,
              title: 'Belum ada berita tersimpan',
              message:
                  'Ketuk ikon bookmark pada berita\nuntuk membacanya nanti.',
            ),
          )
        else
          SliverList.separated(
            itemCount: bookmarks.length,
            separatorBuilder: (_, _) =>
                const Divider(indent: 16, endIndent: 16),
            itemBuilder: (_, index) => BookmarkItem(article: bookmarks[index]),
          ),
      ],
    );
  }
}
