import 'package:flutter/material.dart';

class DetalleScreen extends StatelessWidget {
  final String titulo;
  final String imagen;

  DetalleScreen({required this.titulo, required this.imagen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titulo)),
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(imagen),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  color: Colors.black54,
                  padding: EdgeInsets.all(5),
                  child: Text(
                    titulo,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Información sobre $titulo. Este es uno de los más importantes en el mundo del fútbol.",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
