enum Sport {natacion, canotaje, yoga, futbol}

class Activity
{
  String title;
  String shortDescription;
  String fullDescription;
  Sport category;
  int maxSlots;
  int slotsFilled;
  int precio;

  Activity({
    required this.title,
    required this.shortDescription,
    required this.category,
    required this.maxSlots,
    required this.slotsFilled,
    required this.fullDescription,
    required this.precio
  });
}