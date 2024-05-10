import 'package:flutter/material.dart';

class Datos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos Usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(labelText: 'Apellido'),
            ),
            SizedBox(height: 12),
            TextFormField(
              decoration: InputDecoration(labelText: 'Correo electrónico'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                _mostrarAlerta(context);
              },
              child: Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Datos guardados correctamente'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
