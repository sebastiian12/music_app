import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app/presentations/providers/state_providers.dart';

class ReproductorScreen extends ConsumerWidget {
  const ReproductorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkmode = ref.watch(darkModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Cancion')),
            ElevatedButton(onPressed: () {}, child: const Text('Video')),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/cancion1.jpg',
              width: 300,
              height: 300,
            ),
            const SizedBox(height: 16),
            const Text(
              'Canción 1',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            const Text(
              'Artista 1',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton.icon(
                    label: const Text('100 K'),
                    onPressed: () {},
                    icon: const Icon(Icons.thumb_up),
                  ),
                  TextButton.icon(
                      label: const Text(''),
                      onPressed: () {},
                      icon: const Icon(Icons.thumb_down)),
                  TextButton.icon(
                      label: const Text('200'),
                      onPressed: () {},
                      icon: const Icon(Icons.comment)),
                  TextButton.icon(
                      label: const Text('Guardar'),
                      onPressed: () {},
                      icon: const Icon(Icons.playlist_add)),
                  TextButton.icon(
                      label: const Text('Compartir'),
                      onPressed: () {},
                      icon: const Icon(Icons.reply)),
                  TextButton.icon(
                      label: const Text('Descargar'),
                      onPressed: () {},
                      icon: const Icon(Icons.download)),
                  TextButton.icon(
                      label: const Text('Radio'),
                      onPressed: () {},
                      icon: const Icon(Icons.podcasts)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Image.asset(
              isDarkmode ? 'assets/music_dark.jpg' : 'assets/music.jpg',
              width: 350,
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.shuffle)),
                IconButton(
                  icon: const Icon(Icons.skip_previous),
                  iconSize: 40,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  iconSize: 80,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.skip_next),
                  iconSize: 40,
                  onPressed: () {},
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.repeat)),
              ],
            ),
            const Spacer(),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('A CONTINUACIÓN'),
                  Text('LETRA'),
                  Text('SIMILARES'),
                ]),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
