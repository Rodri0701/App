import 'package:flutter/material.dart';
import 'Notas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicio de la App',
      home: Menus(),
      routes: {
        '/Notas': (context) => Notas(),
        '/thid': (context) => ThirdView()
      },
    );
  }
}

class Menus extends StatelessWidget {
  const Menus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de la App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo de usuario
            CircleAvatar(
              radius: 50.0,
            ),
            SizedBox(height: 20.0),
            // Texto "Selecciona algún apartado"
            Text(
              'Selecciona algún apartado',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            // Botones "Local" y "Sala"
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Notas');
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Local', style: TextStyle(fontSize: 20.0)),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Sala', style: TextStyle(fontSize: 20.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
