import 'package:flutter_dotenv/flutter_dotenv.dart';

// TODO 2: Setup API Constants
// 1. Definisikan baseUrl NewsAPI
// 2. Buat getter untuk mengambil API Key dari dotenv
// 3. Tentukan country (misal: 'us') dan language (misal: 'en')

class ApiConstants {
  ApiConstants._();

  static const String baseUrl = ''; // Isi dengan base URL NewsAPI
  
  static String get apiKey => (dotenv.maybeGet('NEWS_API_KEY') ?? '').trim();

  static const String country = 'us';
  static const String language = 'en';
  static const int pageSize = 30;
  static const Duration timeout = Duration(seconds: 15);
}
