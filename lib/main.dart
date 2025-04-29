import 'package:flutter/material.dart';
import 'package:act5_rutas_6_i/pagina_inicial.dart';

import 'package:act5_rutas_6_i/pagina_dos.dart';
import 'package:act5_rutas_6_i/pagina_cuatro.dart';
import 'package:act5_rutas_6_i/pagina_seis.dart';
import 'package:act5_rutas_6_i/pagina_ocho.dart';
import 'package:act5_rutas_6_i/pagina_diez.dart';
import 'package:act5_rutas_6_i/pagina_doce.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // Cuando navegamos a la ruta "/", se construye la pantalla PantallaUno
        '/': (context) => const PantallaUno(),
        // Cuando navegamos a la ruta "/pantalla2", se construye la pantalla PantallaDos
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla10': (context) => const PantallaDiez(),
        '/pantalla12': (context) => const PantallaDoce(),
      },
    );
  }
}
