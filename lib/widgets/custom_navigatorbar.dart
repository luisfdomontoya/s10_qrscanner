import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // elevation: 0, //Quita la sombra que genera la
      //elevación del widget
      currentIndex: 0, //Nos dice cuál es el elemento
      //seleccionado. En este caso el bottom navigation
      //tiene 2 botones: Map (0) y Directions (1). Al
      //poner el currentIndex en 0 le estamos diciendo
      //que muestre como botón activo a Map.
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Directions',
        ),
      ],
    );
  }
}
