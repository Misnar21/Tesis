import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SidebarListElement extends StatelessWidget {

  const SidebarListElement({
    super.key, 
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary,),
      // trailing: const Icon(Icons.arrow_forward_rounded) ,
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: ()
      {
        Navigator.pop(context); // Colapsa el Drawer
        context.push(menuItem.link);
      },
    );
  }
}