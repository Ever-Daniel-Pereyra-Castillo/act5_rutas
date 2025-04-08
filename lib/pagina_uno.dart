import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pantalla uno',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/pantalla2');
                },
                child: const Text('Ir a Pantalla 2'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/pantalla3');
                },
                child: const Text('Ir a Pantalla 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
