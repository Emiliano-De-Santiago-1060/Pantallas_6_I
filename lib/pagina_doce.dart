import 'package:flutter/material.dart';

class PantallaDoce extends StatefulWidget {
  const PantallaDoce({Key? key}) : super(key: key);

  @override
  State<PantallaDoce> createState() => _PantallaDoceState();
}

class _PantallaDoceState extends State<PantallaDoce> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();

  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(0, duration: const Duration(seconds: 1));
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(
      index,
      (_, animation) => SizeTransition(
        sizeFactor: animation,
        child: const Card(
          margin: EdgeInsets.all(10),
          color: Colors.red,
          child: ListTile(
            title: Text("Deleted", style: TextStyle(fontSize: 24)),
          ),
        ),
      ),
      duration: const Duration(milliseconds: 300),
    );
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 12',
            style: TextStyle(fontSize: 20, color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(
        children: [
          IconButton(onPressed: _addItem, icon: const Icon(Icons.add)),
          Expanded(
            child: AnimatedList(
              key: _key,
              initialItemCount: 0,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) => SizeTransition(
                key: UniqueKey(),
                sizeFactor: animation,
                child: Card(
                  margin: const EdgeInsets.all(10),
                  color: Colors.orangeAccent,
                  child: ListTile(
                    title: Text(_items[index],
                        style: const TextStyle(fontSize: 24)),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _removeItem(index),
                    ),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Regresar'),
          ),
        ],
      ),
    );
  }
}
