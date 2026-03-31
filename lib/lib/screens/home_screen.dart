import 'package:flutter/material.dart';
import 'equipos_screen.dart';
import 'jugadores_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mundo del Fútbol"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.network(
              "https://images.unsplash.com/photo-1508098682722-e99c43a406b2",
            ),

            SizedBox(height: 20),

            Text(
              "Bienvenida al Universo del Fútbol ⚽",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => EquiposScreen()),
                );
              },
              child: Text("Ver Equipos"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => JugadoresScreen()),
                );
              },
              child: Text("Ver Jugadores"),
            ),
          ],
        ),
      ),
    );
  }
}
