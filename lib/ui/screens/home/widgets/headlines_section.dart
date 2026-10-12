import 'package:flutter/material.dart';

import '../../../../data/models/article.dart';
import '../../../widgets/article_tile.dart';
import 'featured_article_card.dart';

/// TODO: Ubah HeadlinesSection menjadi ConsumerWidget
/// TODO: Gunakan AsyncValue.when dari headlinesProvider
class HeadlinesSection extends StatelessWidget {
  const HeadlinesSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Menampilkan artikel dummy untuk sementara
    final articles = [Article.dummy, Article.dummy, Article.dummy];

    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 16),
      sliver: SliverList.separated(
        itemCount: articles.length,
        separatorBuilder: (_, _) => const Divider(indent: 16, endIndent: 16),
        itemBuilder: (_, index) => index == 0
            ? FeaturedArticleCard(article: articles.first)
            : ArticleTile(article: articles[index]),
      ),
    );
  }
}
