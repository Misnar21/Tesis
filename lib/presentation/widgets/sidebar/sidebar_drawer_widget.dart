import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/widgets/sidebar/sidebar_list_element_widget.dart';

class SidebarDrawer extends StatelessWidget {
  const SidebarDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SidebarList(),
    );
  }
}

class SidebarList extends StatelessWidget {
  const SidebarList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index)
      {
        final menuItem = appMenuItems[index];
        return SidebarListElement(menuItem: menuItem);
      },
    );
  }
}