import 'package:flutter/material.dart';
import '../../../models/activities/activity_model.dart';

class ActivityDetailsScreen extends StatelessWidget {

  const ActivityDetailsScreen({
    super.key,
    required this.actividad
    });

  final Activity actividad;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle de la Actividad'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                actividad.title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  actividad.fullDescription,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // TODO Inscribirse
              },
              child: const Text('Inscribirse'),
            ),
          ],
        ),
      ),
    );
  }
}