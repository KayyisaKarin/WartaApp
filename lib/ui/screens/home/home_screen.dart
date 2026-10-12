import 'package:flutter/material.dart';

import 'widgets/category_chips.dart';
import 'widgets/headlines_section.dart';
import 'widgets/home_app_bar.dart';

/// TODO: Ubah HomeScreen menjadi ConsumerWidget
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _refresh() async {
    // TODO: Refresh provider saat pull-to-refresh
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refresh,
      child: const CustomScrollView(
        slivers: [
          HomeAppBar(),
          SliverToBoxAdapter(child: CategoryChips()),
          HeadlinesSection(),
        ],
      ),
    );
  }
}
