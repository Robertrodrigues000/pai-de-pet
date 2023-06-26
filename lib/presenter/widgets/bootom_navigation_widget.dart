import 'package:flutter/material.dart';

import '../../core/theme/app_color.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Inicio",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          label: "Adicionar",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Buscar",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favoritos",
        ),
      ],
    );
  }
}
