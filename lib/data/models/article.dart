// TODO 1: Buat class Article
// 1. Buat class dengan properti: title, sourceName, author, description, url, imageUrl, publishedAt, content
// 2. Buat factory constructor `fromJson(Map<String, dynamic> json)`
// 3. Buat getter `cleanContent` untuk menghapus teks "[+... chars]" dari content
// 4. Buat getter `isValid` untuk memastikan artikel bukan "[Removed]"

class Article {
  // Siswi akan melengkapi bagian ini.
  const Article({
    required this.title,
    required this.sourceName,
    required this.url,
    required this.publishedAt,
    this.author,
    this.description,
    this.imageUrl,
    this.content,
  });

  final String title;
  final String sourceName;
  final String url;
  final DateTime publishedAt;
  final String? author;
  final String? description;
  final String? imageUrl;
  final String? content;

  // TODO: Implementasi cleanContent
  String get cleanContent => content ?? '';

  // TODO: Implementasi isValid
  bool get isValid => true;

  // TODO: Implementasi fromJson
  factory Article.fromJson(Map<String, dynamic> json) {
    return dummy;
  }

  // TODO: Implementasi toJson
  Map<String, dynamic> toJson() {
    return {};
  }

  // Dummy article untuk UI sementara
  static final dummy = Article(
    title: 'Berita Menarik Hari Ini',
    sourceName: 'Warta News',
    url: 'https://example.com',
    publishedAt: DateTime.now(),
    description: 'Ini adalah deskripsi berita sementara sebelum API disambungkan.',
    imageUrl: 'https://picsum.photos/400/200',
    content: 'Isi konten berita yang lebih panjang akan muncul di sini.',
  );
}
