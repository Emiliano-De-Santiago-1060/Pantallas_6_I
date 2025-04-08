import 'package:flutter/material.dart';
import 'package:act5_rutas_6_i/pagina_inicial.dart';
import 'package:act5_rutas_6_i/pagina_dos.dart';
import 'package:act5_rutas_6_i/pagina_tres.dart';

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
        '/pantalla3': (context) => const PantallaTres(),
      },
    );
  }
}
