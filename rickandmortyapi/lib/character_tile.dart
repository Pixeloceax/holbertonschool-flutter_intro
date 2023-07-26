import 'package:flutter/material.dart';
import 'episodes_screen.dart';
import 'models.dart';

class CharacterTile extends StatelessWidget {
  final Character character;

  const CharacterTile({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Espacement entre chaque carte
      child: GridTile(
        footer: Container(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                color: Colors.black.withOpacity(0.6),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    character.name,
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EpisodesScreen(id: character.id),
              ),
            );
          },
          child: AspectRatio(
            aspectRatio: 3 / 4,
            child: Image.network(
              character.img,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
