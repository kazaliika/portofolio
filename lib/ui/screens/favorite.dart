import 'package:flutter/material.dart';
import 'package:portofolio/ui/provider/favorite_provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final words = provider.words;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          final word = words[index];
          return ListTile(
            title: Text(word),
            trailing: IconButton(
              onPressed: () {
                provider.toggleFavorite(word);
              },
              icon: provider.isExist(word)
                  ? const Icon(Icons.delete, color: Colors.black)
                  : const Icon(Icons.favorite_border),
            ),
          );
        },
      ),
    );
  }
}
