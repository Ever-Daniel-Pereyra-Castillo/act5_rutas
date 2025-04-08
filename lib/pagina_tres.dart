import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pantalla tres',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
          backgroundColor: const Color(0xff9e3fb5),
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
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    '/',
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text('Ir al Inicio'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
