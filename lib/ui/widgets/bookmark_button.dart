import 'package:flutter/material.dart';

import '../../data/models/article.dart';

/// TODO: Ubah BookmarkButton menjadi ConsumerWidget
class BookmarkButton extends StatelessWidget {
  const BookmarkButton({super.key, required this.article, this.tonal = false});

  final Article article;

  /// Pakai gaya filled tonal (cocok di atas gambar).
  final bool tonal;

  @override
  Widget build(BuildContext context) {
    // State sementara
    bool isSaved = article.url.isEmpty; // Mencegah dead-code warning
    void onPressed() {
      // TODO: Panggil method toggle() dari bookmarksProvider
    }
    
    final tooltip = isSaved ? 'Hapus dari Tersimpan' : 'Simpan';
    const icon = Icon(Icons.bookmark_border_rounded);
    const selectedIcon = Icon(Icons.bookmark_rounded);

    if (tonal) {
      return IconButton.filledTonal(
        tooltip: tooltip,
        isSelected: isSaved,
        icon: icon,
        selectedIcon: selectedIcon,
        onPressed: onPressed,
      );
    }
    return IconButton(
      tooltip: tooltip,
      visualDensity: VisualDensity.compact,
      isSelected: isSaved,
      icon: icon,
      selectedIcon: selectedIcon,
      onPressed: onPressed,
    );
  }
}
