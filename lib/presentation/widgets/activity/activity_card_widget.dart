import 'package:flutter/material.dart';
import '../../../models/activities/activity_model.dart';
import '../../../services/activity_services.dart';
import '../../screens/activities/activity_details_screen.dart';

class ActivityCard extends StatelessWidget {

  const ActivityCard({
    required this.actividad,
    super.key
    });

  final Activity actividad;

  @override
  Widget build(BuildContext context) {

  final colors = Theme.of(context).colorScheme;
  Color colorActividad = colorActividadMap[actividad.category] ?? colors.outline;
  ThemeData themeActividad = ThemeData(useMaterial3: true, colorSchemeSeed: colorActividad);

    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          side: BorderSide(
            color: themeActividad.primaryColor
          )
        ),
        elevation: 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                leading: Icon(iconoActividadMap[actividad.category], color: themeActividad.primaryColor,),
                title: Text(actividad.title),
                subtitle: Text(actividad.shortDescription),
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ActivityDetailsScreen(actividad: actividad)),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,8,0,4),
                    child: Text("${actividad.precio}\$", textAlign: TextAlign.center,),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,8,8,4),
                    child: Text("${actividad.slotsFilled} / ${actividad.maxSlots}", textAlign: TextAlign.end,),
                  ),
                ],
              ),
          ],
        ),

      ),
    );
  }
}