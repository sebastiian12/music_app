import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fast_selection_provider.g.dart';

@riverpod
class FastSelectionProvider extends _$FastSelectionProvider {
  @override
  void build() {}
}

class FastSelectionWidget extends StatelessWidget {
  const FastSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate((canciones.length / 4).ceil(), (columnIndex) {
          return Column(
            children: List.generate(4, (rowIndex) {
              int songIndex = columnIndex * 4 + rowIndex;
              if (songIndex >= canciones.length) return Container();
              final cancion = canciones[songIndex];
              return SizedBox(
                height: 70,
                width: 350,
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(cancion.imagen),
                    ),
                    Expanded(
                      child: Text(cancion.nombre),
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  ],
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}

class Cancion {
  final String nombre;
  final String imagen;

  Cancion({required this.nombre, required this.imagen});
}

final List<Cancion> canciones = [
  Cancion(nombre: 'Cancion 1', imagen: 'assets/cancion1.jpg'),
  Cancion(nombre: 'Cancion 2', imagen: 'assets/cancion1.jpg'),
  Cancion(nombre: 'Cancion 3', imagen: 'assets/cancion1.jpg'),
  Cancion(nombre: 'Cancion 4', imagen: 'assets/cancion1.jpg'),
  Cancion(nombre: 'Cancion 5', imagen: 'assets/cancion1.jpg'),
  Cancion(nombre: 'Cancion 6', imagen: 'assets/cancion1.jpg'),
  Cancion(nombre: 'Cancion 7', imagen: 'assets/cancion1.jpg'),
  Cancion(nombre: 'Cancion 8', imagen: 'assets/cancion1.jpg'),
  Cancion(nombre: 'Cancion 9', imagen: 'assets/cancion1.jpg'),
];
