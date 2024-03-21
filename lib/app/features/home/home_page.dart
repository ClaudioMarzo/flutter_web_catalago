import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0), // Define a altura da AppBar
        child: AppBar(
          title: Center(
            child: Image.asset(
              'assets/images/logo.png', // Caminho da imagem
              fit: BoxFit.cover, // Ajusta a imagem para cobrir a área disponível
              height: 60.0, // Define a altura da imagem para corresponder à altura da AppBar
            ),
          ),
          centerTitle: true, // Centraliza o título
          backgroundColor: Colors.transparent, // Torna o fundo da AppBar transparente
          elevation: 0, // Remove a sombra da AppBar
        ),
      ),
      body: Container(),
    );
  }
}
