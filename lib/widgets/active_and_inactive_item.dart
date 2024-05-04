import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.draweritemModel,
  });

  final DrawerItemModel draweritemModel;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListTile(
        leading: SvgPicture.asset(draweritemModel.image),
        title: Text(
          draweritemModel.title,
          style: AppStyles.styleMedium16,
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.draweritemModel,
  });

  final DrawerItemModel draweritemModel;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListTile(
        leading: SvgPicture.asset(draweritemModel.image),
        title: Text(
          draweritemModel.title,
          style: AppStyles.styleBoldr16,
        ),
        trailing: Container(
          width: 4,
          decoration: const BoxDecoration(
            color: Color(0xFF4EB7F2),
          ),
        ),
      ),
    );
  }
}