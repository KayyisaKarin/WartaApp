import 'package:flutter/material.dart';

/// TODO: Ubah SearchInput menjadi ConsumerStatefulWidget
class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _clear() {
    _controller.clear();
    // TODO: Hapus query dari searchQueryProvider
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Dengarkan perubahan searchQueryProvider dari luar
    // ref.listen(searchQueryProvider, (_, next) {
    //   if (_controller.text != next) _controller.text = next;
    // });
    final scheme = Theme.of(context).colorScheme;

    return SearchBar(
      controller: _controller,
      hintText: 'Cari berita, topik, atau tokoh',
      elevation: const WidgetStatePropertyAll(0),
      backgroundColor: WidgetStatePropertyAll(scheme.surfaceContainerHigh),
      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 16),
      ),
      leading: const Icon(Icons.search_rounded),
      textInputAction: TextInputAction.search,
      onSubmitted: (value) {
        // TODO: Simpan value ke searchQueryProvider
      },
      trailing: [
        ListenableBuilder(
          listenable: _controller,
          builder: (_, _) => _controller.text.isEmpty
              ? const SizedBox.shrink()
              : IconButton(
                  tooltip: 'Hapus',
                  icon: const Icon(Icons.close_rounded),
                  onPressed: _clear,
                ),
        ),
      ],
    );
  }
}
