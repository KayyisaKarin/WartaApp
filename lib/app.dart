import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'ui/screens/main_shell/main_shell_screen.dart';

// TODO: Ubah NewsApp menjadi ConsumerWidget jika Riverpod sudah ditambahkan
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warta',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      // TODO: Gunakan ref.watch untuk mengambil mode tema
      themeMode: ThemeMode.light,
      home: const MainShellScreen(),
    );
  }
}
