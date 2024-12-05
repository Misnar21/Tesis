import 'package:flutter/material.dart';

List<MenuItem> appMenuItems = [
    
    MenuItem(
      title: 'Actividades',
      subTitle: 'Actividades disponibles para inscribirse!',
      link: '/activities',
      icon: Icons.sports_score
    ),

    MenuItem(
      title: 'Usuarios',
      subTitle: 'Control de usuarios',
      link: '/users',
      icon: Icons.person
    ),

    MenuItem(
      title: 'Recursos',
      subTitle: 'Gestion de recursos',
      link: '/users',
      icon: Icons.store
    ),

    MenuItem(
      title: 'Configuracion',
      subTitle: 'Configuracion de perfil y sistema',
      link: '/users',
      icon: Icons.settings
    ),
  ];

class MenuItem
{
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });

}