import 'package:flutter/material.dart';
import '../../widgets/activity/activity_list_widget.dart';

class ActivityScreen extends StatelessWidget {

  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Actividades'),
      ),
      body: const ActivityList(),
    );
  }
}