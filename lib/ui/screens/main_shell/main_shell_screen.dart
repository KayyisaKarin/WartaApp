import 'package:flutter/material.dart';

import '../bookmarks/bookmarks_screen.dart';
import '../home/home_screen.dart';
import '../search/search_screen.dart';
import 'widgets/app_navigation_bar.dart';

/// TODO: Ubah MainShellScreen menjadi ConsumerWidget saat Riverpod diimplementasikan
class MainShellScreen extends StatefulWidget {
  const MainShellScreen({super.key});

  @override
  State<MainShellScreen> createState() => _MainShellScreenState();
}

class _MainShellScreenState extends State<MainShellScreen> {
  static const _pages = [HomeScreen(), SearchScreen(), BookmarksScreen()];
  
  // State sementara sebelum menggunakan Provider
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: AppNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
