import 'package:flutter/material.dart';
import 'package:flutter_films/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas en cines'),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: Column(
        children: [
          CardSwiper()

          // Listado horizontal de películas
        ],
      ),
    );
  }
}
