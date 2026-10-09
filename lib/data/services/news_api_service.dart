// import '../../core/constants/api_constants.dart';
import '../models/article.dart';

// TODO 3: Implementasi NewsApiService
// 1. Install package http: `flutter pub add http`
// 2. Import 'package:http/http.dart' as http;
// 3. Buat fungsi getTopHeadlines(String category) yang memanggil endpoint /v2/top-headlines
// 4. Buat fungsi searchArticles(String query) yang memanggil endpoint /v2/everything
// 5. Tangani error menggunakan NewsApiException

class NewsApiService {
  Future<List<Article>> fetchTopHeadlines(String category) async {
    // Implementasi fetch API di sini
    return [Article.dummy]; // Hapus baris ini setelah diimplementasikan
  }

  Future<List<Article>> searchArticles(String query) async {
    // Implementasi fetch API di sini
    return []; 
  }
}
