import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app.dart';

Future<void> main() async {
  // Selama proses inisialisasi ini, native splash screen tetap tampil.
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(isOptional: true);
  await initializeDateFormatting('id_ID');

  runApp(
    // TODO: Bungkus NewsApp dengan ProviderScope saat mengimplementasikan Riverpod
    const NewsApp(),
  );
}
