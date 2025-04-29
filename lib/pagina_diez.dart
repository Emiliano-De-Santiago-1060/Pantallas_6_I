import 'package:flutter/material.dart';

class PantallaDiez extends StatefulWidget {
  const PantallaDiez({Key? key}) : super(key: key);

  @override
  State<PantallaDiez> createState() => _PantallaDiezState();
}

class _PantallaDiezState extends State<PantallaDiez> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 10',
            style: TextStyle(fontSize: 20, color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              child: const Text('Flutter'),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _fontSize = _first ? 90 : 60;
                _color = _first ? Colors.blue : Colors.red;
                _first = !_first;
              });
            },
            child: const Text('Switch'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Regresar'),
          ),
        ],
      ),
    );
  }
}
