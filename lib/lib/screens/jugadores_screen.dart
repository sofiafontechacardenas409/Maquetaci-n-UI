import 'package:flutter/material.dart';
import 'detalle_screen.dart';

class JugadoresScreen extends StatelessWidget {

  final List<Map<String, String>> jugadores = [
    {
      "nombre": "Lionel Messi",
      "imagen": "https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Lionel_Messi.jpg"
    },
    {
      "nombre": "Cristiano Ronaldo",
      "imagen": "https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg"
    },
    {
      "nombre": "Neymar Jr",
      "imagen": "https://upload.wikimedia.org/wikipedia/commons/5/5c/Neymar_2018.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Jugadores")),
      body: ListView.builder(
        itemCount: jugadores.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(jugadores[index]["imagen"]!),
            title: Text(jugadores[index]["nombre"]!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetalleScreen(
                    titulo: jugadores[index]["nombre"]!,
                    imagen: jugadores[index]["imagen"]!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
