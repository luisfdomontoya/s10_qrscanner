import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  int _selectedMenuOpt = 0;

  int get selectedMenuOpt {
    return this._selectedMenuOpt;
  }

  set selectedMenuOpt(int i) {
    this._selectedMenuOpt = i;
    //Este método lo que hace es notificar a todos
    //los widgets que están escuchando que hubo un
    //cambio en la propiedad _selectedMenuOpt y por
    //lo tanto que se redibujen:
    notifyListeners();
  }
}
