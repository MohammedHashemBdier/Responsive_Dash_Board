import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.draweritemModel, required this.isActive});
  final DrawerItemModel draweritemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: isActive
          ? ActiveDrawerItem(draweritemModel: draweritemModel)
          : InActiveDrawerItem(draweritemModel: draweritemModel),
    );
  }
}
