// import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/article.dart';

// TODO 4: Implementasi BookmarkStorage
// 1. Buat fungsi getBookmarks() yang membaca string dari SharedPreferences dan men-decode JSON
// 2. Buat fungsi saveBookmarks(List<Article> bookmarks) yang me-encode list ke JSON dan simpan ke SharedPreferences

class BookmarkStorage {
  static const String _key = 'bookmarked_articles';

  final SharedPreferencesAsync _prefs = SharedPreferencesAsync();

  Future<List<Article>> load() async {
   final raw = await _prefs.getStringList(_key) ?? [];
   return raw
        .map((item) => Article.fromJson(jsonDecode(item) as Map<String, dynamic>),
        ).toList();
  }

  Future<void> save(List<Article> articles) async {
    final raw = articles
                .map((article) => jsonEncode(article.toJson()))
                .toList();
    return _prefs.setStringList(_key, raw);
  }
}
