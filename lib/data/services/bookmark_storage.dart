// import 'package:shared_preferences/shared_preferences.dart';
import '../models/article.dart';

// TODO 4: Implementasi BookmarkStorage
// 1. Buat fungsi getBookmarks() yang membaca string dari SharedPreferences dan men-decode JSON
// 2. Buat fungsi saveBookmarks(List<Article> bookmarks) yang me-encode list ke JSON dan simpan ke SharedPreferences

class BookmarkStorage {
  // static const String _key = 'bookmarks';
  // final SharedPreferencesAsync _prefs = SharedPreferencesAsync();

  Future<List<Article>> getBookmarks() async {
    // Baca data dari _prefs
    return [];
  }

  Future<void> saveBookmarks(List<Article> bookmarks) async {
    // Simpan data ke _prefs
  }
}
