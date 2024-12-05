import 'package:flutter/material.dart';

import '../models/activities/activity_model.dart';

class ActivityServices {}

final Map<Sport,IconData> iconoActividadMap = {
        Sport.canotaje : Icons.kayaking,
        Sport.natacion : Icons.pool,
        Sport.yoga : Icons.sports_gymnastics,
        Sport.futbol : Icons.sports_soccer,
};

final Map<Sport,Color> colorActividadMap = {
        Sport.canotaje : Colors.blueAccent,
        Sport.natacion : Colors.lightBlue,
        Sport.yoga : Colors.redAccent,
        Sport.futbol : Colors.green,
};

List<Activity> actividadesDummy = [

  Activity(
    title: 'Paseo en Kayak',
    shortDescription: 'Jueves 20:00 a 21:30',
    category: Sport.canotaje,
    maxSlots: 50,
    slotsFilled: 0,
    fullDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris risus nibh, tempor eu vehicula sed, placerat ut nisi. Aliquam efficitur efficitur molestie. Morbi at consequat elit. Nullam et enim in nisl placerat auctor sit amet a felis. Fusce gravida arcu et mi laoreet, eu viverra metus lacinia. Etiam pellentesque mi sit amet dictum aliquet. Donec egestas vulputate diam. Cras porta enim felis, at fermentum enim sollicitudin ut. Curabitur eget justo malesuada, tempor ex eget, molestie ligula. Donec ultricies ex vel lacinia porta. Nunc sit amet porta dui. Nullam ac sagittis ante. Praesent semper sapien sit amet pretium sagittis. Aenean ut consequat eros. Nulla sed dolor et erat congue faucibus.',
    precio: 500,
    ),

  Activity(
    title: 'Canoa por el lago',
    shortDescription: 'Jueves 20:00 a 21:30',
    category: Sport.canotaje,
    maxSlots: 50,
    slotsFilled: 10,
    fullDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris risus nibh, tempor eu vehicula sed, placerat ut nisi. Aliquam efficitur efficitur molestie. Morbi at consequat elit. Nullam et enim in nisl placerat auctor sit amet a felis. Fusce gravida arcu et mi laoreet, eu viverra metus lacinia. Etiam pellentesque mi sit amet dictum aliquet. Donec egestas vulputate diam. Cras porta enim felis, at fermentum enim sollicitudin ut. Curabitur eget justo malesuada, tempor ex eget, molestie ligula. Donec ultricies ex vel lacinia porta. Nunc sit amet porta dui. Nullam ac sagittis ante. Praesent semper sapien sit amet pretium sagittis. Aenean ut consequat eros. Nulla sed dolor et erat congue faucibus.',
    precio: 500,
    ),

  Activity(
    title: 'Yoga en familia',
    shortDescription: 'Jueves 20:00 a 21:30',
    category: Sport.yoga,
    maxSlots: 50,
    slotsFilled: 0,
    fullDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris risus nibh, tempor eu vehicula sed, placerat ut nisi. Aliquam efficitur efficitur molestie. Morbi at consequat elit. Nullam et enim in nisl placerat auctor sit amet a felis. Fusce gravida arcu et mi laoreet, eu viverra metus lacinia. Etiam pellentesque mi sit amet dictum aliquet. Donec egestas vulputate diam. Cras porta enim felis, at fermentum enim sollicitudin ut. Curabitur eget justo malesuada, tempor ex eget, molestie ligula. Donec ultricies ex vel lacinia porta. Nunc sit amet porta dui. Nullam ac sagittis ante. Praesent semper sapien sit amet pretium sagittis. Aenean ut consequat eros. Nulla sed dolor et erat congue faucibus.',
    precio: 500,
    ),

  Activity(
    title: 'Futbol 5',
    shortDescription: 'Jueves 20:00 a 21:30',
    category: Sport.futbol,
    maxSlots: 50,
    slotsFilled: 0,
    fullDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris risus nibh, tempor eu vehicula sed, placerat ut nisi. Aliquam efficitur efficitur molestie. Morbi at consequat elit. Nullam et enim in nisl placerat auctor sit amet a felis. Fusce gravida arcu et mi laoreet, eu viverra metus lacinia. Etiam pellentesque mi sit amet dictum aliquet. Donec egestas vulputate diam. Cras porta enim felis, at fermentum enim sollicitudin ut. Curabitur eget justo malesuada, tempor ex eget, molestie ligula. Donec ultricies ex vel lacinia porta. Nunc sit amet porta dui. Nullam ac sagittis ante. Praesent semper sapien sit amet pretium sagittis. Aenean ut consequat eros. Nulla sed dolor et erat congue faucibus.',
    precio: 500,
    ),

  Activity(
    title: 'Piscina abierta',
    shortDescription: 'Jueves 20:00 a 21:30',
    category: Sport.natacion,
    maxSlots: 50,
    slotsFilled: 0,
    fullDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris risus nibh, tempor eu vehicula sed, placerat ut nisi. Aliquam efficitur efficitur molestie. Morbi at consequat elit. Nullam et enim in nisl placerat auctor sit amet a felis. Fusce gravida arcu et mi laoreet, eu viverra metus lacinia. Etiam pellentesque mi sit amet dictum aliquet. Donec egestas vulputate diam. Cras porta enim felis, at fermentum enim sollicitudin ut. Curabitur eget justo malesuada, tempor ex eget, molestie ligula. Donec ultricies ex vel lacinia porta. Nunc sit amet porta dui. Nullam ac sagittis ante. Praesent semper sapien sit amet pretium sagittis. Aenean ut consequat eros. Nulla sed dolor et erat congue faucibus.',
    precio: 500,
    ),
    
  Activity(
    title: 'Paseo en Kayak',
    shortDescription: 'Jueves 20:00 a 21:30',
    category: Sport.canotaje,
    maxSlots: 50,
    slotsFilled: 0,
    fullDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris risus nibh, tempor eu vehicula sed, placerat ut nisi. Aliquam efficitur efficitur molestie. Morbi at consequat elit. Nullam et enim in nisl placerat auctor sit amet a felis. Fusce gravida arcu et mi laoreet, eu viverra metus lacinia. Etiam pellentesque mi sit amet dictum aliquet. Donec egestas vulputate diam. Cras porta enim felis, at fermentum enim sollicitudin ut. Curabitur eget justo malesuada, tempor ex eget, molestie ligula. Donec ultricies ex vel lacinia porta. Nunc sit amet porta dui. Nullam ac sagittis ante. Praesent semper sapien sit amet pretium sagittis. Aenean ut consequat eros. Nulla sed dolor et erat congue faucibus.',
    precio: 500,
    ),

  Activity(
    title: 'Canoa por el lago',
    shortDescription: 'Jueves 20:00 a 21:30',
    category: Sport.canotaje,
    maxSlots: 50,
    slotsFilled: 10,
    fullDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris risus nibh, tempor eu vehicula sed, placerat ut nisi. Aliquam efficitur efficitur molestie. Morbi at consequat elit. Nullam et enim in nisl placerat auctor sit amet a felis. Fusce gravida arcu et mi laoreet, eu viverra metus lacinia. Etiam pellentesque mi sit amet dictum aliquet. Donec egestas vulputate diam. Cras porta enim felis, at fermentum enim sollicitudin ut. Curabitur eget justo malesuada, tempor ex eget, molestie ligula. Donec ultricies ex vel lacinia porta. Nunc sit amet porta dui. Nullam ac sagittis ante. Praesent semper sapien sit amet pretium sagittis. Aenean ut consequat eros. Nulla sed dolor et erat congue faucibus.',
    precio: 500,
    ),

  Activity(
    title: 'Yoga en familia',
    shortDescription: 'Jueves 20:00 a 21:30',
    category: Sport.yoga,
    maxSlots: 50,
    slotsFilled: 0,
    fullDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris risus nibh, tempor eu vehicula sed, placerat ut nisi. Aliquam efficitur efficitur molestie. Morbi at consequat elit. Nullam et enim in nisl placerat auctor sit amet a felis. Fusce gravida arcu et mi laoreet, eu viverra metus lacinia. Etiam pellentesque mi sit amet dictum aliquet. Donec egestas vulputate diam. Cras porta enim felis, at fermentum enim sollicitudin ut. Curabitur eget justo malesuada, tempor ex eget, molestie ligula. Donec ultricies ex vel lacinia porta. Nunc sit amet porta dui. Nullam ac sagittis ante. Praesent semper sapien sit amet pretium sagittis. Aenean ut consequat eros. Nulla sed dolor et erat congue faucibus.',
    precio: 500,
    ),

  Activity(
    title: 'Futbol 5',
    shortDescription: 'Jueves 20:00 a 21:30',
    category: Sport.futbol,
    maxSlots: 50,
    slotsFilled: 0,
    fullDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris risus nibh, tempor eu vehicula sed, placerat ut nisi. Aliquam efficitur efficitur molestie. Morbi at consequat elit. Nullam et enim in nisl placerat auctor sit amet a felis. Fusce gravida arcu et mi laoreet, eu viverra metus lacinia. Etiam pellentesque mi sit amet dictum aliquet. Donec egestas vulputate diam. Cras porta enim felis, at fermentum enim sollicitudin ut. Curabitur eget justo malesuada, tempor ex eget, molestie ligula. Donec ultricies ex vel lacinia porta. Nunc sit amet porta dui. Nullam ac sagittis ante. Praesent semper sapien sit amet pretium sagittis. Aenean ut consequat eros. Nulla sed dolor et erat congue faucibus.',
    precio: 500,
    ),

  Activity(
    title: 'Piscina abierta',
    shortDescription: 'Jueves 20:00 a 21:30',
    category: Sport.natacion,
    maxSlots: 50,
    slotsFilled: 0,
    fullDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris risus nibh, tempor eu vehicula sed, placerat ut nisi. Aliquam efficitur efficitur molestie. Morbi at consequat elit. Nullam et enim in nisl placerat auctor sit amet a felis. Fusce gravida arcu et mi laoreet, eu viverra metus lacinia. Etiam pellentesque mi sit amet dictum aliquet. Donec egestas vulputate diam. Cras porta enim felis, at fermentum enim sollicitudin ut. Curabitur eget justo malesuada, tempor ex eget, molestie ligula. Donec ultricies ex vel lacinia porta. Nunc sit amet porta dui. Nullam ac sagittis ante. Praesent semper sapien sit amet pretium sagittis. Aenean ut consequat eros. Nulla sed dolor et erat congue faucibus.',
    precio: 500,
    ),
  
];