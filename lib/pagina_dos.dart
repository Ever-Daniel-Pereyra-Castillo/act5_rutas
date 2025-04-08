import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pantalla dos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
          backgroundColor: const Color(0xffb53f3f),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Regresar'),
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
