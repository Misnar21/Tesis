import 'package:flutter/material.dart';
import '../../../services/activity_services.dart';
import '../../widgets/activity/activity_card_widget.dart';
import '../../widgets/sidebar/sidebar_drawer_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Principal'),
      ),
      drawer: const SidebarDrawer(),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {

  final activityCards = <Widget>[
    ActivityCard(actividad: actividadesDummy[0]),
    ActivityCard(actividad: actividadesDummy[2]),
    ActivityCard(actividad: actividadesDummy[3]),
    ActivityCard(actividad: actividadesDummy[1]),
    ActivityCard(actividad: actividadesDummy[4]),
    ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0,60,0,5),
          child: Text('Mis Actividades', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400))
        ),
        SizedBox(
          height: 130,
          child: ActivityCarousel(activityCards: activityCards),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0,40,0,5),
          child: Text('Mis Cursos', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
        ),
        SizedBox(
          height: 130,
          child: ActivityCarousel(activityCards: activityCards),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0,40,0,5),
          child: Text('Mis Clases', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
        ),
        SizedBox(
          height: 130,
          child: ActivityCarousel(activityCards: activityCards),
        ),
      ],
    );
  }
}

class ActivityCarousel extends StatelessWidget {
  const ActivityCarousel({
    super.key,
    required this.activityCards,
  });

  final List<Widget> activityCards;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CarouselView(
            itemExtent: 300,
            shrinkExtent: 150,
            children: activityCards),
        )
      ],
    );
  }
}

