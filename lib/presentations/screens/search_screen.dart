import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: const InputDecoration(
            hintText: 'Buscar canciones, artistas o podcasts',
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.mic),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.graphic_eq),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Busquedas recientes',
          ),
          InkWell(
            onTap: () {},
            child: Ink(
              height: 50,
              width: double.infinity,
              child: const Row(
                children: [
                  Icon(Icons.history),
                  SizedBox(width: 10),
                  Text('Cancion 1'),
                  Spacer(),
                  Icon(Icons.north_west),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Ink(
              height: 50,
              width: double.infinity,
              child: const Row(
                children: [
                  Icon(Icons.history),
                  SizedBox(width: 10),
                  Text('Cancion 2'),
                  Spacer(),
                  Icon(Icons.north_west),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
