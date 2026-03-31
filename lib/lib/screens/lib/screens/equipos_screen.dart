import 'package:flutter/material.dart';
import 'detalle_screen.dart';

class EquiposScreen extends StatelessWidget {

  final List<Map<String, String>> equipos = [
    {
      "nombre": "FC Barcelona",
      "imagen": "https://upload.wikimedia.org/wikipedia/en/4/47/FC_Barcelona_%28crest%29.svg"
    },
    {
      "nombre": "Real Madrid",
      "imagen": "https://upload.wikimedia.org/wikipedia/en/5/56/Real_Madrid_CF.svg"
    },
    {
      "nombre": "PSG",
      "imagen": "https://upload.wikimedia.org/wikipedia/en/a/a7/Paris_Saint-Germain_F.C..svg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Equipos")),
      body: ListView.builder(
        itemCount: equipos.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image.network(
                  equipos[index]["imagen"]!,
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Text(
                    equipos[index]["nombre"]!,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetalleScreen(
                          titulo: equipos[index]["nombre"]!,
                          imagen: equipos[index]["imagen"]!,
                        ),
                      ),
                    );
                  },
                  child: Text("Ver"),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
