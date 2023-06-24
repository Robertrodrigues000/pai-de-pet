import 'package:flutter/material.dart';

import '../../domain/entitites/char_entity.dart';

class CharCard extends StatelessWidget {
  final CharEntity char;

  const CharCard({
    super.key,
    required this.char,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: const Border.fromBorderSide(
                    BorderSide(
                      color: Colors.grey,
                      width: 0.6,
                    ),
                  ),
                  // image: char.image
                ),
              ),
            ),
            Column(
              children: [
                Text(char.name),
                Text(char.species),
                Text(char.gender),
                Text(char.location.name),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
