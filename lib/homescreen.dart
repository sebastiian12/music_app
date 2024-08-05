import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import './presentations/providers/providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final buttonList = ref.watch(buttonListProvider);
    final isDarkMode = ref.watch(darkModeProvider);

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.music_note),
        title: const Text('Music'),
        actions: [
          IconButton(
              onPressed: () {
                context.push('/activities');
              },
              icon: const Icon(Icons.notifications)),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              context.push('/search');
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              context.push('/settings');
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: buttonList,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Seleccion Rapida',
                        style: TextStyle(fontSize: 26),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Reproducir todos'),
                      ),
                    ],
                  ),
                  const FastSelectionWidget(),
                  Row(
                    children: [
                      const Text(
                        'Canciones para ti',
                        style: TextStyle(fontSize: 26),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Ver mas'),
                      ),
                    ],
                  ),
                  const ForYouWidget(),
                  SizedBox(
                    height: 56,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: isDarkMode ? Colors.black : Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset('assets/cancion1.jpg'),
                  ),
                  const Expanded(
                    child: Text('Cancion 1'),
                  ),
                  IconButton(
                    icon: const Icon(Icons.cast),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.play_arrow),
                    onPressed: () {
                      context.push('/reproductor');
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Principal'),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow), label: 'Samples'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explorar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music), label: 'Biblioteca'),
        ],
      ),
    );
  }
}
