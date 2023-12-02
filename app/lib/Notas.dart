import 'package:flutter/material.dart';

class Notas extends StatelessWidget {
  const Notas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PNuts'),
      ),
      body: const Center(
        child: Text('Sin notas'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ExpansionTile(
              title: Text('Tamaño fuente'),
              children: [
                ListTile(
                  title: Text('Pequeña'),
                  onTap: () {
                    // Lógica al hacer clic en Subopción 1
                  },
                ),
                ListTile(
                  title: Text('Mediana'),
                  onTap: () {
                    // Lógica al hacer clic en Subopción 2
                  },
                ),
                ListTile(
                  title: Text('Grande'),
                  onTap: () {
                    // Lógica al hacer clic en Subopción 2
                  },
                ),
                ListTile(
                  title: Text('Muy grande'),
                  onTap: () {
                    // Lógica al hacer clic en Subopción 2
                  },
                )
              ],
            ),
            ExpansionTile(
              title: Text('Ordenar por...'),
              children: [
                ListTile(
                  title: Text('Fecha de creación'),
                  onTap: () {
                    // Lógica al hacer clic en Subopción 1
                  },
                ),
                ListTile(
                  title: Text('Fecha de modificación'),
                  onTap: () {
                    // Lógica al hacer clic en Subopción 2
                  },
                ),
                ListTile(
                  title: Text('Por título'),
                  onTap: () {
                    // Lógica al hacer clic en Subopción 2
                  },
                )
              ],
            ),
            ListTile(
              title: Text('Notas ocultas'),
            ),
            ListTile(
              title: Text('Usuario'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Regresar al menú'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle FloatingActionButton click
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SecondView extends StatelessWidget {
  const SecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Vista'),
      ),
      body: const Center(
        child: Text('Contenido segunda vista'),
      ),
    );
  }
}

class ThirdView extends StatelessWidget {
  const ThirdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tercera Vista'),
      ),
      body: const Center(
        child: Text('Contenido tercera vista'),
      ),
    );
  }
}

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vista de Usuario'),
      ),
      body: const Center(
        child: Text('Contenido vista de usuario'),
      ),
    );
  }
}
