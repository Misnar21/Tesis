import 'package:flutter/material.dart';
import '../../../services/activity_services.dart';
import 'activity_card_widget.dart';

class ActivityList extends StatelessWidget {
  const ActivityList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: actividadesDummy.length,
      itemBuilder: (context, index)
      {
        final actividad = actividadesDummy[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(2,8,2,2),
          child: ActivityCard(actividad : actividad),
        );
      },
    );
  }
}