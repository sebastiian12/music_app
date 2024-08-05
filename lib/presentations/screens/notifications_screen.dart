import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actividad'),
      ),
      body: ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
                //backgroundImage: Image.asset('assets/cancion1.jpg'),
                ),
            title: Text(suggestions[index].name),
            trailing: ElevatedButton(
              onPressed: () {
                // Lógica para suscribirse a la sugerencia
              },
              child: Text('Suscribirse'),
            ),
          );
        },
      ),
    );
  }
}

class Suggestion {
  final String name;
  final String imageUrl;

  Suggestion({required this.name, required this.imageUrl});
}

List<Suggestion> suggestions = [
  Suggestion(
    name: 'Sugerencia 1',
    imageUrl: 'https://example.com/suggestion1.jpg',
  ),
  Suggestion(
    name: 'Sugerencia 2',
    imageUrl: 'https://example.com/suggestion2.jpg',
  ),
  // Agrega más sugerencias aquí
];
